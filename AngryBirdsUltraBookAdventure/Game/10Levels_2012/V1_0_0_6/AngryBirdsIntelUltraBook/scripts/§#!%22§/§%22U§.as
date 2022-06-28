package §#!"§
{
   import §"x§.§-8§;
   import §#&§.§35§;
   import §#&§.§9!o§;
   import §#&§.§]!B§;
   import §#&§.§`S§;
   import §7@§.§4C§;
   import flash.display.Loader;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class §"U§ extends §[!'§
   {
      
      public static var §7!2§:String;
      
      public static var §"!i§:Boolean = false;
      
      public static var §6!6§:Dictionary = new Dictionary();
       
      
      private var §`!a§:Loader;
      
      private var §<!G§:§+M§;
      
      public function §"U§()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         addEventListener(MouseEvent.CLICK,this.§4!§);
      }
      
      private function §@!u§(param1:Class) : §+M§
      {
         if(!§6!6§[param1])
         {
            §6!6§[param1] = [];
         }
         var _loc2_:Array = §6!6§[param1];
         if(_loc2_.length == 0)
         {
            return new param1();
         }
         return _loc2_.pop();
      }
      
      private function §>Q§(param1:§+M§) : void
      {
         var _loc2_:Class = Object(this.§<!G§).constructor;
         if(!§6!6§[_loc2_])
         {
            §6!6§[_loc2_] = [];
         }
         §6!6§[_loc2_].push(param1);
      }
      
      private function §<!P§() : void
      {
         var _loc1_:Class = null;
         switch(Object(this.§5N§).constructor)
         {
            case §9!o§:
               _loc1_ = §;V§;
               break;
            case §]!B§:
               _loc1_ = §5!W§;
               break;
            case §35§:
               _loc1_ = §%s§;
         }
         if(!_loc1_)
         {
            §-8§.log("WARNING! Unknown score item found!");
            return;
         }
         var _loc2_:Class = !!this.§<!G§ ? Object(this.§<!G§).constructor : null;
         if(_loc1_ != _loc2_)
         {
            if(this.§<!G§)
            {
               this.§>Q§(removeChild(this.§<!G§) as §+M§);
            }
            this.§<!G§ = addChild(this.§@!u§(_loc1_)) as §+M§;
         }
         this.§<!G§.data = this.§5N§;
      }
      
      private function §4!§(param1:MouseEvent) : void
      {
         if(this.§5N§ && this.§5N§ is §]!B§)
         {
            §#G§.scrollerSprite.dispatchEvent(new §4C§(§4C§.§,>§,data as §`S§));
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
            this.§<!P§();
         }
      }
      
      public function get §5N§() : §`S§
      {
         return data as §`S§;
      }
   }
}
