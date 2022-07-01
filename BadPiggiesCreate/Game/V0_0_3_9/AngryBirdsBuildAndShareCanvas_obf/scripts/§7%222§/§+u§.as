package §7"2§
{
   import §%%§.§7!O§;
   import §@!N§.§3E§;
   import §]"&§.§`!z§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   
   public class §+u§ extends §`!z§ implements §!"1§
   {
      
      public static const §63§:int = 0;
      
      public static const §>x§:int = 1;
      
      public static const §<p§:int = 640;
      
      public static const §`"8§:int = 480;
       
      
      private var §>p§:Boolean = true;
      
      private var §+!V§:Boolean = false;
      
      private var §,^§:String = null;
      
      private var §%!;§:int = 0;
      
      private var §5"0§:SharedObject = null;
      
      private var §,!Y§:Boolean = false;
      
      private var §3b§:int = 0;
      
      private var §<]§:Point;
      
      private var §"Z§:§;!5§;
      
      public function §+u§(param1:§;!5§)
      {
         this.§<]§ = new Point();
         super(param1.§94§.§'!E§);
         this.§"Z§ = param1;
      }
      
      public static function §^!g§(param1:Vector.<§7!O§>, param2:Number = 0) : Rectangle
      {
         var _loc7_:§7!O§ = null;
         var _loc8_:Rectangle = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         for each(_loc7_ in param1)
         {
            if((_loc8_ = _loc7_.§7n§(true)) != null)
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
         §5!G§(true);
         this.§"Z§.§94§.§'!E§.objects.setGroundTextureEnabled(false);
         §3E§.§!`§(true);
         addEventListeners();
      }
      
      public function activate() : void
      {
      }
      
      override public function update(param1:Number) : void
      {
      }
      
      public function get §+#§() : Boolean
      {
         return this.§>p§;
      }
      
      public function §^t§(param1:String) : void
      {
         §;!x§.background.resetLevelBackground(param1);
      }
      
      public function get §0#§() : Point
      {
         return this.§<]§;
      }
      
      public function §&"9§() : Boolean
      {
         return false;
      }
      
      public function §=@§(param1:String) : Boolean
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
         if(this.§<]§ == null)
         {
            this.§<]§ = new Point(param1,param2);
         }
         else
         {
            this.§<]§.setTo(param1,param2);
         }
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
   }
}
