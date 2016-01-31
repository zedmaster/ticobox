<div data-role="popup" id="modal-suporte" data-theme="a" class="ui-corner-all"  data-overlay-theme="a" data-theme="a">
    <form>
        <h3>Suporte</h3>
        <form>

            <fieldset data-role="controlgroup">

                <label for="s1">Suporte</label>
                <input type="radio" name="sugestao" id="s1" value="1">
                <label for="s2">Reportar Erros</label>
                <input type="radio" name="sugestao" id="s2" value="2">
                <label for="s3">Sugestões</label>
                <input type="radio" name="sugestao" id="s3" value="3">

                <div class="ui-field-contain">
                    <label for="info">Mensagem:</label>
                    <textarea name="addinfo" id="info"></textarea>
                </div>

            </fieldset>

        </form>

        <div data-role="controlgroup" data-type="horizontal">
            <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-b" data-rel="back">Cancelar</a>
            <a href="#" class="ui-btn ui-corner-all ui-shadow ui-btn-inline ui-btn-b ui-icon-mail ui-btn-icon-right" data-rel="back">Enviar</a>
        </div>
    </form>
</div>