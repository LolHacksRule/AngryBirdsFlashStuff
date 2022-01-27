package §1"a§
{
   import §"k§.§-!i§;
   import §"k§.§4#G§;
   import §"k§.§5"2§;
   import §"k§.§=#W§;
   import §"k§.§]"V§;
   import §"k§.§`§;
   import §,!,§.§0!d§;
   import §5t§.Log;
   import flash.display.Loader;
   import flash.utils.Dictionary;
   
   public class §^#G§ extends §0!d§
   {
      
      public static var §-8§:String;
      
      private static var §^#[§:Dictionary = new Dictionary();
       
      
      private var §9v§:Loader;
      
      private var §<!s§:§;"2§;
      
      public function §^#G§()
      {
         super();
      }
      
      private function §@"Q§(param1:Class) : §;"2§
      {
         var _loc3_:§;"2§ = null;
         if(!§^#[§[param1])
         {
            §^#[§[param1] = [];
         }
         var _loc2_:Array = §^#[§[param1];
         if(_loc2_.length == 0)
         {
            _loc3_ = §;"2§(new param1());
            _loc3_.§[#A§(this);
            return _loc3_;
         }
         return _loc2_.pop();
      }
      
      private function §44§(param1:§;"2§) : void
      {
         var _loc2_:Class = Object(this.§<!s§).constructor;
         if(!§^#[§[_loc2_])
         {
            §^#[§[_loc2_] = [];
         }
         §^#[§[_loc2_].push(param1);
      }
      
      private function §5!o§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§6!1§).constructor)
         {
            case §5"2§:
               if(§5"2§(this.§6!1§).§-!P§)
               {
                  _loc1_ = §3#B§;
                  break;
               }
               _loc1_ = §9#+§;
               break;
            case §=#W§:
               _loc1_ = §^!t§;
               break;
            case §-!i§:
               _loc1_ = §`!8§;
               break;
            case §4#G§:
               _loc1_ = § ">§;
               break;
            case §`#8§:
               _loc1_ = §6-§;
         }
         if(!_loc1_)
         {
            Log.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§<!s§ ? Object(this.§<!s§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§<!s§)
            {
               this.§44§(removeChild(this.§<!s§) as §;"2§);
            }
            this.§<!s§ = addChild(this.§@"Q§(_loc1_)) as §;"2§;
         }
         this.§<!s§.data = this.§6!1§;
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
            this.§5!o§();
         }
      }
      
      public function get §6!1§() : §]"V§
      {
         return data as §]"V§;
      }
      
      public function get §8f§() : §;"2§
      {
         return this.§<!s§;
      }
   }
}
