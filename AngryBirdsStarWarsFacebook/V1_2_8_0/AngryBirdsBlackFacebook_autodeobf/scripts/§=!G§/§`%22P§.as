package §=!G§
{
   import §0"k§.§&L§;
   import §0"k§.§,=§;
   import §0"k§.§-"[§;
   import §0"k§.§3"E§;
   import §0"k§.§6!U§;
   import §0"k§.§6!v§;
   import §8§.§"!E§;
   import §9"`§.§-"H§;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §`"P§ extends §"!E§
   {
      
      public static var § u§:String;
      
      private static var §0!h§:Dictionary = new Dictionary();
       
      
      private var §&K§:Loader;
      
      private var §2!m§:§4!C§;
      
      public function §`"P§()
      {
         super();
      }
      
      private function §!q§(param1:Class) : §4!C§
      {
         var _loc3_:§4!C§ = null;
         if(!§0!h§[param1])
         {
            §0!h§[param1] = [];
         }
         var _loc2_:Array = §0!h§[param1];
         if(_loc2_.length == 0)
         {
            _loc3_ = §4!C§(new param1());
            _loc3_.§;"W§(this);
            return _loc3_;
         }
         return _loc2_.pop();
      }
      
      private function §#"W§(param1:§4!C§) : void
      {
         var _loc2_:Class = Object(this.§2!m§).constructor;
         if(!§0!h§[_loc2_])
         {
            §0!h§[_loc2_] = [];
         }
         §0!h§[_loc2_].push(param1);
      }
      
      private function §7!V§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§7d§).constructor)
         {
            case §-"[§:
               if(§-"[§(this.§7d§).§4"d§)
               {
                  _loc1_ = §;"+§;
                  break;
               }
               _loc1_ = §1L§;
               break;
            case §,=§:
               _loc1_ = §%i§;
               break;
            case §6!v§:
               _loc1_ = §2!7§;
               break;
            case §6!U§:
               _loc1_ = §6#!§;
               break;
            case §3"E§:
               _loc1_ = §4!"§;
         }
         if(!_loc1_)
         {
            §-"H§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§2!m§ ? Object(this.§2!m§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§2!m§)
            {
               this.§#"W§(removeChild(this.§2!m§) as §4!C§);
            }
            this.§2!m§ = addChild(this.§!q§(_loc1_)) as §4!C§;
         }
         this.§2!m§.data = this.§7d§;
      }
      
      override public function get height() : Number
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
            this.§7!V§();
         }
      }
      
      public function get §7d§() : §&L§
      {
         return data as §&L§;
      }
      
      public function get §;k§() : §4!C§
      {
         return this.§2!m§;
      }
   }
}
