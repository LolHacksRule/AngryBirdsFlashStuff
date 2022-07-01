package § !u§
{
   import §"!E§.§#!'§;
   import §"!E§.§[!s§;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class §9y§ extends §#!'§
   {
       
      
      private var §&z§:MovieClip;
      
      private var §`!0§:DisplayObject;
      
      private var §5i§:Boolean = false;
      
      private var §9j§:§&^§;
      
      private var §9b§:int;
      
      private var §;!-§:int;
      
      public function §9y§(param1:String, param2:§[!s§, param3:DisplayObject, param4:Boolean = false)
      {
         var _loc5_:XML = null;
         this.§9j§ = new §&^§();
         this.§`!0§ = param3;
         (_loc5_ = <Button/>).@name = param1;
         _loc5_.@MouseDown = !!param4 ? "SELECT_THEME" : "SELECT_ITEM";
         var _loc6_:MovieClip = new MovieClip();
         this.§&z§ = new MovieClip();
         _loc6_.addChild(this.§&z§);
         _loc6_.addChild(this.§`!0§);
         this.§9b§ = this.§`!0§.width;
         this.§;!-§ = this.§`!0§.height;
         §6!4§ = true;
         _loc6_.addEventListener(MouseEvent.MOUSE_OVER,this.§4!B§);
         _loc6_.addEventListener(MouseEvent.MOUSE_OUT,this.§5Y§);
         _loc6_.addEventListener(Event.MOUSE_LEAVE,this.§5Y§);
         super(_loc5_,param2,_loc6_);
      }
      
      private function §5Y§(param1:MouseEvent) : void
      {
         if(!this.§5i§)
         {
            this.§#!q§();
         }
      }
      
      private function §4!B§(param1:MouseEvent = null) : void
      {
         this.§96§();
      }
      
      public function §;?§() : void
      {
         this.§5i§ = true;
         this.§96§();
      }
      
      private function §96§() : void
      {
         this.§9j§.§@!C§(this.§`!0§);
      }
      
      public function §#!q§() : void
      {
         this.§5i§ = false;
         this.§9j§.§ B§(this.§`!0§);
      }
      
      public function §2§() : String
      {
         return mName;
      }
      
      public function §[!?§() : DisplayObject
      {
         return this.§`!0§;
      }
      
      public function §!j§() : BitmapData
      {
         var _loc1_:Array = this.§`!0§.filters;
         this.§`!0§.filters = [];
         var _loc2_:BitmapData = new BitmapData(this.§`!0§.width / this.§`!0§.scaleX,this.§`!0§.height / this.§`!0§.scaleY,true,0);
         _loc2_.draw(this.§`!0§);
         this.§`!0§.filters = _loc1_;
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         this.§&z§.graphics.clear();
         this.§&z§.graphics.beginFill(0,0);
         this.§&z§.graphics.drawRect(0,0,param1,param2);
         this.§`!0§.x = this.§&z§.width / 2 - this.§`!0§.width / 2;
         this.§`!0§.y = this.§&z§.height / 2 - this.§`!0§.height / 2;
      }
      
      public function §+w§(param1:Number, param2:Number) : void
      {
         this.§`!0§.scaleX = param1;
         this.§`!0§.scaleY = param2;
         this.§`!0§.x = this.§&z§.width / 2 - this.§`!0§.width / 2;
         this.§`!0§.y = this.§&z§.height / 2 - this.§`!0§.height / 2;
      }
      
      public function §2!`§() : int
      {
         return this.§9b§;
      }
      
      public function § H§() : int
      {
         return this.§;!-§;
      }
   }
}
