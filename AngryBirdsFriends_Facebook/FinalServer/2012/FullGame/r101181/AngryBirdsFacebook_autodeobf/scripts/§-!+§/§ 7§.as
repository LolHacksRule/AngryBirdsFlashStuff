package §-!+§
{
   import §,"2§.§;6§;
   import §6o§.§+!k§;
   import §]!>§.§#"1§;
   import §]!>§.§,;§;
   import §]!>§.§2!W§;
   import §]!>§.§;!e§;
   import §]!>§.§>+§;
   import §]!>§.§[Q§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class § 7§ extends §;!B§
   {
      
      public static var §+!z§:String;
      
      public static var §<"C§:Boolean = false;
      
      public static var §"X§:Dictionary = new Dictionary();
       
      
      private var §]D§:Loader;
      
      private var §6"3§:§=G§;
      
      public function § 7§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§#!0§);
      }
      
      private function §,""§(param1:Class) : §=G§
      {
         if(!§"X§[param1])
         {
            §"X§[param1] = [];
         }
         var _loc2_:Array = §"X§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §@c§(param1:§=G§) : void
      {
         var _loc2_:Class = Object(this.§6"3§).constructor;
         if(!§"X§[_loc2_])
         {
            §"X§[_loc2_] = [];
         }
         §"X§[_loc2_].push(param1);
      }
      
      private function §`"%§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§ T§).constructor)
         {
            case §2!W§:
               _loc1_ = §'@§;
               break;
            case §;!e§:
               _loc1_ = §<!<§;
               break;
            case §>+§:
               _loc1_ = §&"?§;
               break;
            case §[Q§:
               _loc1_ = §;u§;
               break;
            case §,;§:
               _loc1_ = §`![§;
         }
         if(!_loc1_)
         {
            §+!k§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§6"3§ ? Object(this.§6"3§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§6"3§)
            {
               this.§@c§(removeChild(this.§6"3§) as §=G§);
            }
            this.§6"3§ = addChild(this.§,""§(_loc1_)) as §=G§;
         }
         this.§6"3§.data = this.§ T§;
      }
      
      private function §#!0§(param1:MouseEvent) : void
      {
         if(this.§ T§ && this.§ T§ is §;!e§)
         {
            §10§.scrollerSprite.dispatchEvent(new §;6§(§;6§.§;"E§,data as §#"1§));
         }
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
            this.§`"%§();
         }
      }
      
      public function get § T§() : §#"1§
      {
         return data as §#"1§;
      }
      
      public function get §%!Q§() : §=G§
      {
         return this.§6"3§;
      }
   }
}
