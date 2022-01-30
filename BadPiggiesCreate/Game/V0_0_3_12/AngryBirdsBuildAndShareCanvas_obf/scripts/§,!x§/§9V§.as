package §,!x§
{
   import §-=§.§8"1§;
   import §0E§.§#O§;
   import §0E§.§@R§;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   
   public class §9V§ extends EventDispatcher implements §]!'§
   {
       
      
      private var §&R§:Vector.<String>;
      
      private var §[",§:§]S§;
      
      private var §#!=§:String;
      
      public function §9V§(param1:§]S§)
      {
         super();
         this.§[",§ = param1;
      }
      
      public function initialize() : void
      {
         this.§[",§.§;!]§.addEventListener(§8"1§.§-!V§,this.onPhysicsEnabled,false,1);
         this.§[",§.§;!]§.addEventListener(§8"1§.§1!e§,this.§'l§,false,1);
         this.§[",§.§]!c§.addEventListener(§8"1§.§;S§,this.onPlay,false,1);
         this.§[",§.§]!c§.addEventListener(KeyboardEvent.KEY_DOWN,this.§;4§);
      }
      
      public function activate() : void
      {
         if(this.§#!=§)
         {
            this.§<P§(this.§#!=§);
            this.§#!=§ = null;
         }
      }
      
      private function onPlay(param1:§8"1§) : void
      {
         this.§#!=§ = this.§3O§(false);
      }
      
      private function onPhysicsEnabled(param1:Event) : void
      {
         this.§3O§();
      }
      
      private function §'l§(param1:Event) : void
      {
         this.§ !]§(false);
      }
      
      public function §`!R§() : void
      {
         this.§<P§(this.§&R§[this.§&R§.length - 1]);
      }
      
      public function §<P§(param1:String) : void
      {
         var _loc2_:§#O§ = §@R§.§;"7§(param1);
         this.§[",§.§<" §.§-"1§(_loc2_);
      }
      
      public function §2-§() : void
      {
         this.§&R§ = null;
      }
      
      public function § !]§(param1:Boolean = true) : void
      {
         if(this.§&R§ != null && this.§&R§.length > 0)
         {
            this.§`!R§();
            this.§&R§.pop();
            dispatchEvent(new §8"1§(§8"1§.§2!b§));
         }
      }
      
      public function §3O§(param1:Boolean = true) : String
      {
         if(!§0!s§.§ "!§.§;!=§())
         {
            return null;
         }
         if(this.§&R§ == null)
         {
            this.§&R§ = new Vector.<String>();
         }
         var _loc2_:String = this.§[",§.§<" §.§9!8§.§9!4§().§5"0§();
         if(param1)
         {
            this.§&R§.push(_loc2_);
         }
         return _loc2_;
      }
      
      public function update(param1:Number) : void
      {
      }
      
      private function §;4§(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == 90 && §0!s§.§ "!§.§in§())
         {
            this.§ !]§();
         }
      }
   }
}
