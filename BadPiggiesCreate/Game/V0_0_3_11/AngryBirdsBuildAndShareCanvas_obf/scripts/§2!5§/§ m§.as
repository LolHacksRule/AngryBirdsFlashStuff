package §2!5§
{
   import §1"3§.§6!W§;
   import §62§.§7! §;
   import §@!P§.§?"%§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   
   public class § m§ extends §7! § implements §4!]§
   {
      
      public static const §?`§:int = 0;
      
      public static const §"!B§:int = 1;
      
      public static const §"A§:int = 640;
      
      public static const §-!]§:int = 480;
       
      
      private var §;6§:Boolean = true;
      
      private var §'T§:Boolean = false;
      
      private var §9I§:String = null;
      
      private var §'b§:int = 0;
      
      private var §#!>§:SharedObject = null;
      
      private var §<-§:Boolean = false;
      
      private var §^!y§:int = 0;
      
      private var §[l§:Point;
      
      private var §!^§:§0!X§;
      
      public function § m§(param1:§0!X§)
      {
         this.§[l§ = new Point();
         super(param1.§@s§.§'4§);
         this.§!^§ = param1;
      }
      
      public static function §[!f§(param1:Vector.<§?"%§>, param2:Number = 0) : Rectangle
      {
         var _loc7_:§?"%§ = null;
         var _loc8_:Rectangle = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         for each(_loc7_ in param1)
         {
            if((_loc8_ = _loc7_.§[!V§(true)) != null)
            {
               if(_loc8_.x < _loc3_)
               {
                  _loc3_ = _loc8_.x;
               }
               if(_loc8_.y < _loc4_)
               {
                  _loc4_ = _loc8_.y;
               }
               if(_loc8_.x + _loc8_.width > _loc5_)
               {
                  _loc5_ = _loc8_.x + _loc8_.width;
               }
               if(_loc8_.y + _loc8_.height > _loc6_)
               {
                  _loc6_ = _loc8_.y + _loc8_.height;
               }
            }
         }
         return new Rectangle(_loc3_ - param2,_loc4_ - param2,_loc5_ - _loc3_ + param2,_loc6_ - _loc4_ + param2);
      }
      
      public function initialize() : void
      {
      }
      
      override public function init() : void
      {
         super.init();
         §%5§(true);
         this.§!^§.§@s§.§'4§.objects.setGroundTextureEnabled(false);
         §6!W§.§?!G§(true);
         addEventListeners();
      }
      
      public function activate() : void
      {
      }
      
      override public function update(param1:Number) : void
      {
      }
      
      public function get §@"8§() : Boolean
      {
         return this.§;6§;
      }
      
      public function §!!`§(param1:String) : void
      {
         §]Z§.background.resetLevelBackground(param1);
      }
      
      public function get §'!g§() : Point
      {
         return this.§[l§;
      }
      
      public function §6"§() : Boolean
      {
         return false;
      }
      
      public function §4!>§(param1:String) : Boolean
      {
         return false;
      }
      
      override protected function handleMouseUp(param1:Number, param2:Number) : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_UP));
      }
      
      override protected function handleMouseDown(param1:Number, param2:Number) : void
      {
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_DOWN));
      }
      
      override protected function handleMouseMove(param1:Number, param2:Number) : void
      {
         super.handleMouseMove(param1,param2);
         if(this.§[l§ == null)
         {
            this.§[l§ = new Point(param1,param2);
         }
         else
         {
            this.§[l§.setTo(param1,param2);
         }
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
   }
}
