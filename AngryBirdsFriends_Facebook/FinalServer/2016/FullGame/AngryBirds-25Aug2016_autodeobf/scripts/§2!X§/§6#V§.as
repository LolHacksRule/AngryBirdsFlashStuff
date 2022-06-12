package §2!X§
{
   import §!x§.§4"d§;
   import §%$!§.§"r§;
   import §%$!§.§%!2§;
   import §%$!§.§3J§;
   import §%$!§.§8!t§;
   import §%$!§.§9$6§;
   import §%$!§.§>!G§;
   import §%$!§.§?i§;
   import §%$!§.§[!6§;
   import §%$!§.§^#l§;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §6#V§ extends §3?§
   {
      
      public static var §6"n§:String;
      
      public static var §6"F§:Dictionary = new Dictionary();
       
      
      private var § each§:Loader;
      
      private var § !p§:§5$<§;
      
      public function §6#V§()
      {
         super();
      }
      
      private function §8"+§(param1:Class) : §5$<§
      {
         if(!§6"F§[param1])
         {
            §6"F§[param1] = [];
         }
         var _loc2_:Array = §6"F§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §[!8§(param1:§5$<§) : void
      {
         var _loc2_:Class = Object(this.§ !p§).constructor;
         if(!§6"F§[_loc2_])
         {
            §6"F§[_loc2_] = [];
         }
         §6"F§[_loc2_].push(param1);
      }
      
      private function §1!V§() : void
      {
         var _loc1_:Class = null;
         if(this.§5!M§)
         {
            switch(Object(this.§5!M§).constructor)
            {
               case §?i§:
                  _loc1_ = §<#_§;
                  break;
               case §3J§:
                  _loc1_ = §8#D§;
                  break;
               case §>!G§:
                  _loc1_ = §4#K§;
                  break;
               case §8!t§:
                  _loc1_ = §2"C§;
                  break;
               case §^#l§:
                  _loc1_ = §]#4§;
                  break;
               case §%!2§:
                  _loc1_ = §""N§;
                  break;
               case §[!6§:
                  _loc1_ = §6#b§;
                  break;
               case §"r§:
                  _loc1_ = §[k§;
            }
         }
         if(!_loc1_)
         {
            §4"d§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§ !p§ ? Object(this.§ !p§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§ !p§)
            {
               this.§[!8§(removeChild(this.§ !p§) as §5$<§);
            }
            this.§ !p§ = addChild(this.§8"+§(_loc1_)) as §5$<§;
         }
         this.§ !p§.data = this.§5!M§;
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
            this.§1!V§();
         }
      }
      
      public function get §5!M§() : §9$6§
      {
         return data as §9$6§;
      }
      
      public function get §&0§() : §5$<§
      {
         return this.§ !p§;
      }
   }
}
