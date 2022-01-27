package §9"g§
{
   import com.furusystems.dconsole2.core.style.§7"h§;
   
   public class §["§
   {
       
      
      private var §'!l§:XML;
      
      private var § !'§:§7"h§;
      
      private var §+<§:Object;
      
      public function §["§(param1:§7"h§)
      {
         super();
         this.§ !'§ = param1;
      }
      
      public function §@#5§(param1:XML) : void
      {
         this.§'!l§ = param1;
         this.§+<§ = this.§>-§(this.§'!l§);
      }
      
      private function §>-§(param1:XML) : Object
      {
         var o:Object = null;
         var n:XML = null;
         var node:XML = param1;
         if(node.text() != undefined)
         {
            try
            {
               o = this.§ !'§.colors.§&!H§(node.toString());
            }
            catch(e:Error)
            {
               o = Number(node.toString());
            }
         }
         else if(node.§*§.length() > 0)
         {
            o = {};
            for each(n in node.§*§)
            {
               o[n.localName()] = this.§>-§(n);
            }
         }
         return o;
      }
      
      public function get data() : Object
      {
         return this.§+<§;
      }
      
      public function get xml() : XML
      {
         return this.§'!l§;
      }
      
      public function set xml(param1:XML) : void
      {
         this.§@#5§(param1);
      }
   }
}
