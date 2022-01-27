package §#!c§
{
   import §"+§.§6" §;
   import §#!o§.Item;
   import §;#§.§;?§;
   import flash.display.Sprite;
   
   public class §#!Z§ extends Sprite
   {
       
      
      public var §=W§:§!I§;
      
      public function §#!Z§()
      {
         super();
      }
      
      public function §>!§(param1:String) : void
      {
         if(this.§=W§)
         {
            this.§=W§.§3!p§(param1);
         }
      }
      
      public function §[F§(param1:Array) : §!I§
      {
         var _loc2_:Item = null;
         var _loc3_:Item = null;
         var _loc4_:Item = null;
         for each(_loc2_ in param1)
         {
            if(_loc2_.§^w§.toUpperCase() == "CATEGORYBIRDS")
            {
               this.§+e§(_loc2_.§9!^§,_loc2_.sId,_loc2_.§^w§,§6" §.§;!O§,110,174);
            }
         }
         for each(_loc3_ in param1)
         {
            if(_loc3_.§^w§.toUpperCase() == "CATEGORYBACKGROUNDS")
            {
               this.§>!§(_loc3_.§9!^§);
            }
         }
         for each(_loc4_ in param1)
         {
            this.§=W§.§'<§(_loc4_);
         }
         return this.§=W§;
      }
      
      public function §+e§(param1:String, param2:String, param3:String, param4:Array, param5:int = 110, param6:int = 174, param7:Boolean = false) : §!I§
      {
         var _loc8_:§!I§ = null;
         for each(_loc8_ in param4)
         {
            if(_loc8_.§&o§().§9!^§ == param1)
            {
               _loc8_.§&o§().sId = param2;
               _loc8_.§&o§().§^w§ = param3;
               _loc8_.show(param5,param6);
               if(!param7)
               {
                  §;?§.§,K§ = _loc8_;
               }
               this.§=W§ = _loc8_;
               while(this.numChildren > 0)
               {
                  removeChildAt(0);
               }
               this.addChild(_loc8_);
            }
            else
            {
               _loc8_.hide();
            }
         }
         return this.§=W§;
      }
   }
}
