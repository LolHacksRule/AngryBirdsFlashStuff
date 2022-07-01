package §,!x§
{
   import §&=§.§0?§;
   import §1!N§.§"!k§;
   import §@r§.§[i§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   
   public class §'!"§ extends §0?§ implements §]!'§
   {
      
      public static const §&"3§:int = 0;
      
      public static const §7w§:int = 1;
      
      public static const §1"#§:int = 640;
      
      public static const §0!%§:int = 480;
       
      
      private var §!?§:Boolean = true;
      
      private var §8a§:Boolean = false;
      
      private var §"!y§:String = null;
      
      private var §^!t§:int = 0;
      
      private var §0!$§:SharedObject = null;
      
      private var §2!P§:Boolean = false;
      
      private var §2!?§:int = 0;
      
      private var §6!V§:Point;
      
      private var §[",§:§]S§;
      
      public function §'!"§(param1:§]S§)
      {
         this.§6!V§ = new Point();
         super(param1.§<" §.§9!8§);
         this.§[",§ = param1;
      }
      
      public static function §6!&§(param1:Vector.<§"!k§>, param2:Number = 0) : Rectangle
      {
         var _loc7_:§"!k§ = null;
         var _loc8_:Rectangle = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         for each(_loc7_ in param1)
         {
            if((_loc8_ = _loc7_.§#1§(true)) != null)
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
         §0!w§(true);
         this.§[",§.§<" §.§9!8§.objects.setGroundTextureEnabled(false);
         §[i§.§@b§(true);
         addEventListeners();
      }
      
      public function activate() : void
      {
      }
      
      override public function update(param1:Number) : void
      {
      }
      
      public function get §[!P§() : Boolean
      {
         return this.§!?§;
      }
      
      public function §<>§(param1:String) : void
      {
         §]!3§.background.resetLevelBackground(param1);
      }
      
      public function get §>1§() : Point
      {
         return this.§6!V§;
      }
      
      public function §1s§() : Boolean
      {
         return false;
      }
      
      public function §`!9§(param1:String) : Boolean
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
         if(this.§6!V§ == null)
         {
            this.§6!V§ = new Point(param1,param2);
         }
         else
         {
            this.§6!V§.setTo(param1,param2);
         }
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
   }
}
