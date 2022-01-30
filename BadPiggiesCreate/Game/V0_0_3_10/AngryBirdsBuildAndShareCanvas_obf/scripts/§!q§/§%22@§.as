package §!q§
{
   import §,y§.§]s§;
   import §2!§.§>B§;
   import §?^§.§0Q§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   
   public class §"@§ extends §]s§ implements §2j§
   {
      
      public static const §@!1§:int = 0;
      
      public static const §?v§:int = 1;
      
      public static const §@u§:int = 640;
      
      public static const §&!n§:int = 480;
       
      
      private var §,0§:Boolean = true;
      
      private var §5r§:Boolean = false;
      
      private var § "6§:String = null;
      
      private var §=<§:int = 0;
      
      private var §!!F§:SharedObject = null;
      
      private var §7L§:Boolean = false;
      
      private var §[!?§:int = 0;
      
      private var §9!E§:Point;
      
      private var §5!V§:§84§;
      
      public function §"@§(param1:§84§)
      {
         this.§9!E§ = new Point();
         super(param1.§"j§.§^"'§);
         this.§5!V§ = param1;
      }
      
      public static function §'!H§(param1:Vector.<§0Q§>, param2:Number = 0) : Rectangle
      {
         var _loc7_:§0Q§ = null;
         var _loc8_:Rectangle = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         for each(_loc7_ in param1)
         {
            if((_loc8_ = _loc7_.§^g§(true)) != null)
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
         §5!n§(true);
         this.§5!V§.§"j§.§^"'§.objects.setGroundTextureEnabled(false);
         §>B§.§^"-§(true);
         addEventListeners();
      }
      
      public function activate() : void
      {
      }
      
      override public function update(param1:Number) : void
      {
      }
      
      public function get §43§() : Boolean
      {
         return this.§,0§;
      }
      
      public function §`A§(param1:String) : void
      {
         §,!T§.background.resetLevelBackground(param1);
      }
      
      public function get §'!T§() : Point
      {
         return this.§9!E§;
      }
      
      public function §-E§() : Boolean
      {
         return false;
      }
      
      public function §08§(param1:String) : Boolean
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
         if(this.§9!E§ == null)
         {
            this.§9!E§ = new Point(param1,param2);
         }
         else
         {
            this.§9!E§.setTo(param1,param2);
         }
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
   }
}
