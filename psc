import sys
from PySide6.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QWidget, QLabel, QLineEdit, QPushButton)

def exibir_mensagem():

    nome = campo_nome.text()
    mensagem = campo_mensagem.text()

    label1.setText(f"Nome: {nome}\nMensagem: {mensagem}")

if _name_ == '__main__':
    app = QApplication(sys.argv)

    janela = QMainWindow()

    conjunto_widget = QWidget()
    v_layout = QVBoxLayout()
    conjunto_widget.setLayout(v_layout)

    label1 = QLabel('Nome:\nMensagem:')
    v_layout.addWidget(label1)

    campo_nome = QLineEdit()
    campo_nome.setPlaceholderText('Digite seu nome')
    v_layout.addWidget(campo_nome)

    campo_mensagem = QLineEdit()
    campo_mensagem.setPlaceholderText('Digite sua mensagem')
    v_layout.addWidget(campo_mensagem)

  
    botao_enviar = QPushButton('Enviar')
    botao_enviar.clicked.connect(exibir_mensagem)
    v_layout.addWidget(botao_enviar)

    janela.setCentralWidget(conjunto_widget)

    conjunto_widget.setStyleSheet("""
        QLabel {
            font-size: 18px;
            font-weight: bold;
            margin-bottom: 10px;
        }

        QLineEdit {
            height: 30px;
            font-size: 16px;
            margin-bottom: 10px;
        }

        QPushButton {
            height: 40px;
            font-size: 16px;
        }
    """)

    janela.show()

    sys.exit(app.exec())
