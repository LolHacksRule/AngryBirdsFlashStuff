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
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc5_:XML = null;
         if(_loc8_)
         {
            this.§9j§ = new §&^§();
            if(_loc8_)
            {
               addr28:
               this.§`!0§ = param3;
            }
            (_loc5_ = <Button/>).@name = param1;
            if(!_loc7_)
            {
               _loc5_.@MouseDown = !!param4 ? "SELECT_THEME" : "SELECT_ITEM";
            }
            var _loc6_:MovieClip = new MovieClip();
            this.§&z§ = new MovieClip();
            if(_loc8_ || this)
            {
               _loc6_.addChild(this.§&z§);
               _loc6_.addChild(this.§`!0§);
               if(!_loc7_)
               {
                  this.§9b§ = this.§`!0§.width;
                  this.§;!-§ = this.§`!0§.height;
               }
               §6!4§ = true;
               _loc6_.addEventListener(MouseEvent.MOUSE_OVER,this.§4!B§);
               _loc6_.addEventListener(MouseEvent.MOUSE_OUT,this.§5Y§);
               if(!_loc7_)
               {
                  addr122:
                  _loc6_.addEventListener(Event.MOUSE_LEAVE,this.§5Y§);
                  super(_loc5_,param2,_loc6_);
               }
               return;
            }
            §§goto(addr122);
         }
         §§goto(addr28);
      }
      
      private function §5Y§(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            if(!this.§5i§)
            {
               if(_loc3_ || _loc2_)
               {
                  addr44:
                  this.§#!q§();
               }
            }
            return;
         }
         §§goto(addr44);
      }
      
      private function §4!B§(param1:MouseEvent = null) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§96§();
         }
      }
      
      public function §;?§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            this.§5i§ = true;
            if(_loc2_)
            {
               addr29:
               this.§96§();
            }
            return;
         }
         §§goto(addr29);
      }
      
      private function §96§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§9j§.§@!C§(this.§`!0§);
         }
      }
      
      public function §#!q§() : void
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            this.§5i§ = false;
            if(_loc1_ || this)
            {
               addr28:
               this.§9j§.§ B§(this.§`!0§);
            }
            return;
         }
         §§goto(addr28);
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
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Array = this.§`!0§.filters;
         if(!_loc4_)
         {
            this.§`!0§.filters = [];
         }
         var _loc2_:BitmapData = new BitmapData(this.§`!0§.width / this.§`!0§.scaleX,this.§`!0§.height / this.§`!0§.scaleY,true,0);
         if(_loc3_ || _loc2_)
         {
            _loc2_.draw(this.§`!0§);
            if(_loc3_ || _loc1_)
            {
               this.§`!0§.filters = _loc1_;
            }
         }
         return _loc2_;
      }
      
      public function setSize(param1:int, param2:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§&z§.graphics.clear();
            if(!_loc3_)
            {
               this.§&z§.graphics.beginFill(0,0);
               if(_loc4_ || param2)
               {
                  this.§&z§.graphics.drawRect(0,0,param1,param2);
                  if(!(_loc3_ && param1))
                  {
                     this.§`!0§.x = this.§&z§.width / 2 - this.§`!0§.width / 2;
                     §§goto(addr63);
                  }
               }
               §§goto(addr63);
            }
            §§goto(addr89);
         }
         addr63:
         if(!_loc3_)
         {
            addr89:
            this.§`!0§.y = this.§&z§.height / 2 - this.§`!0§.height / 2;
         }
      }
      
      public function §+w§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§`!0§.scaleX = param1;
            if(!(_loc3_ && this))
            {
               this.§`!0§.scaleY = param2;
               if(_loc4_)
               {
                  this.§`!0§.x = this.§&z§.width / 2 - this.§`!0§.width / 2;
                  if(_loc3_ && _loc3_)
                  {
                  }
                  §§goto(addr91);
               }
               this.§`!0§.y = this.§&z§.height / 2 - this.§`!0§.height / 2;
            }
         }
         addr91:
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
