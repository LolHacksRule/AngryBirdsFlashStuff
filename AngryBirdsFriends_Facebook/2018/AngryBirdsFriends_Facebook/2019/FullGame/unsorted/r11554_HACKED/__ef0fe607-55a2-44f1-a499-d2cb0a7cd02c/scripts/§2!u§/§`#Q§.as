package §2!u§
{
   import §9#K§.§=#f§;
   import §]"'§.§+!!§;
   import §]"'§.§,#[§;
   import §]"'§.§4$#§;
   import §]"'§.§8!a§;
   import §]"'§.§=!h§;
   import §]"'§.§^"X§;
   import §]"'§.§`!V§;
   import §]"'§.§`#o§;
   import §]"'§.§default§;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §`#Q§ extends §<#h§
   {
      
      public static var §+";§:String;
      
      public static var §%#X§:Dictionary = new Dictionary();
       
      
      private var §&![§:Loader;
      
      private var §+#F§:§^#h§;
      
      public function §`#Q§()
      {
         super();
      }
      
      private function §9#?§(param1:Class) : §^#h§
      {
         if(!§%#X§[param1])
         {
            §%#X§[param1] = [];
         }
         var _loc2_:Array = §%#X§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §@#o§(param1:§^#h§) : void
      {
         var _loc2_:Class = Object(this.§+#F§).constructor;
         if(!§%#X§[_loc2_])
         {
            §%#X§[_loc2_] = [];
         }
         §%#X§[_loc2_].push(param1);
      }
      
      private function §8"<§() : void
      {
         var _loc1_:Class = null;
         if(this.§@#^§)
         {
            switch(Object(this.§@#^§).constructor)
            {
               case §+!!§:
                  _loc1_ = §2$#§;
                  break;
               case §`!V§:
                  _loc1_ = §"I§;
                  break;
               case §`#o§:
                  _loc1_ = §5[§;
                  break;
               case §default§:
                  _loc1_ = §@#Y§;
                  break;
               case §,#[§:
                  _loc1_ = §5#T§;
                  break;
               case §^"X§:
                  _loc1_ = LeagueScorePlate;
                  break;
               case §=!h§:
                  _loc1_ = §4§;
                  break;
               case §4$#§:
                  _loc1_ = §5$7§;
            }
         }
         if(!_loc1_)
         {
            §=#f§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§+#F§ ? Object(this.§+#F§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§+#F§)
            {
               this.§@#o§(removeChild(this.§+#F§) as §^#h§);
            }
            this.§+#F§ = addChild(this.§9#?§(_loc1_)) as §^#h§;
            this.§+#F§.brandThePlate();
         }
         this.§+#F§.data = this.§@#^§;
      }
      
      override public function get width() : Number
      {
         return 61;
      }
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.update();
      }
      
      private function update() : void
      {
         if(data != null)
         {
            this.§8"<§();
         }
      }
      
      public function get §@#^§() : §8!a§
      {
         return data as §8!a§;
      }
      
      public function get §!"U§() : §^#h§
      {
         return this.§+#F§;
      }
   }
}
