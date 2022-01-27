package §%"q§
{
   import §0"I§.§5!s§;
   import §9!&§.§`-§;
   import §`!b§.§"§;
   import §`!b§.§-"P§;
   import §`!b§.§;!M§;
   import §`!b§.§>"h§;
   import §`!b§.§?"S§;
   import §`!b§.§`§;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §]"b§ extends §`-§
   {
      
      public static var §%"6§:String;
      
      private static var § !u§:Dictionary = new Dictionary();
       
      
      private var §`!E§:Loader;
      
      private var §-"H§:§,L§;
      
      public function §]"b§()
      {
         super();
      }
      
      private function § T§(param1:Class) : §,L§
      {
         var _loc3_:§,L§ = null;
         if(!§ !u§[param1])
         {
            § !u§[param1] = [];
         }
         var _loc2_:Array = § !u§[param1];
         if(_loc2_.length == 0)
         {
            _loc3_ = §,L§(new param1());
            _loc3_.§5"j§(this);
            return _loc3_;
         }
         return _loc2_.pop();
      }
      
      private function §3#§(param1:§,L§) : void
      {
         var _loc2_:Class = Object(this.§-"H§).constructor;
         if(!§ !u§[_loc2_])
         {
            § !u§[_loc2_] = [];
         }
         § !u§[_loc2_].push(param1);
      }
      
      private function § A§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§#!P§).constructor)
         {
            case §>"h§:
               if(§>"h§(this.§#!P§).§0!W§)
               {
                  _loc1_ = §5!"§;
                  break;
               }
               _loc1_ = §3#7§;
               break;
            case §-"P§:
               _loc1_ = §@"7§;
               break;
            case §?"S§:
               _loc1_ = §9!Q§;
               break;
            case §`#1§:
               _loc1_ = §7!L§;
               break;
            case §;!M§:
               _loc1_ = §9!^§;
         }
         if(!_loc1_)
         {
            §5!s§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§-"H§ ? Object(this.§-"H§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§-"H§)
            {
               this.§3#§(removeChild(this.§-"H§) as §,L§);
            }
            this.§-"H§ = addChild(this.§ T§(_loc1_)) as §,L§;
         }
         this.§-"H§.data = this.§#!P§;
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
            this.§ A§();
         }
      }
      
      public function get §#!P§() : §"#6§
      {
         return data as §"#6§;
      }
      
      public function get §1d§() : §,L§
      {
         return this.§-"H§;
      }
   }
}
