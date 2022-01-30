package § ^§
{
   import §2b§.§8!m§;
   import §=%§.§<A§;
   import §>!?§.§'6§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   
   public class §,!,§ extends §'6§ implements §-!"§
   {
      
      public static const §[>§:int = 0;
      
      public static const §-B§:int = 1;
      
      public static const §<K§:int = 640;
      
      public static const §^!1§:int = 480;
       
      
      private var §9M§:Boolean = true;
      
      private var §=!8§:Boolean = false;
      
      private var §6P§:String = null;
      
      private var § !+§:int = 0;
      
      private var §;4§:SharedObject = null;
      
      private var §2",§:Boolean = false;
      
      private var §!+§:int = 0;
      
      private var §^!k§:Point;
      
      private var §`5§:§0c§;
      
      public function §,!,§(param1:§0c§)
      {
         this.§^!k§ = new Point();
         super(param1.§6%§.§9"&§);
         this.§`5§ = param1;
      }
      
      public static function §1!4§(param1:Vector.<§<A§>, param2:Number = 0) : Rectangle
      {
         var _loc7_:§<A§ = null;
         var _loc8_:Rectangle = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         for each(_loc7_ in param1)
         {
            if((_loc8_ = _loc7_.§5!3§(true)) != null)
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
         §=o§(true);
         this.§`5§.§6%§.§9"&§.objects.setGroundTextureEnabled(false);
         §8!m§.§&!<§(true);
         addEventListeners();
      }
      
      public function activate() : void
      {
      }
      
      override public function update(param1:Number) : void
      {
      }
      
      public function get §,,§() : Boolean
      {
         return this.§9M§;
      }
      
      public function §<!>§(param1:String) : void
      {
         §7!;§.background.resetLevelBackground(param1);
      }
      
      public function get §=Z§() : Point
      {
         return this.§^!k§;
      }
      
      public function §,!I§() : Boolean
      {
         return false;
      }
      
      public function §&B§(param1:String) : Boolean
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
         if(this.§^!k§ == null)
         {
            this.§^!k§ = new Point(param1,param2);
         }
         else
         {
            this.§^!k§.setTo(param1,param2);
         }
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
   }
}
