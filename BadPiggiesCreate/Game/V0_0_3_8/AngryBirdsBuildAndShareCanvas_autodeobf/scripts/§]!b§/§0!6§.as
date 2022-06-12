package §]!b§
{
   import §4!S§.§"!K§;
   import §>0§.§=D§;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.SharedObject;
   import §true§.§>"-§;
   
   public class §0!6§ extends §"!K§ implements §9h§
   {
      
      public static const §+S§:int = 0;
      
      public static const §]!r§:int = 1;
      
      public static const §4!^§:int = 640;
      
      public static const §<!P§:int = 480;
       
      
      private var §#!G§:Boolean = true;
      
      private var §;!"§:Boolean = false;
      
      private var §``§:String = null;
      
      private var §@!e§:int = 0;
      
      private var §+6§:SharedObject = null;
      
      private var §99§:Boolean = false;
      
      private var § Y§:int = 0;
      
      private var §7!n§:Point;
      
      private var §8O§:§]?§;
      
      public function §0!6§(param1:§]?§)
      {
         this.§7!n§ = new Point();
         super(param1.§4+§.§]!D§);
         this.§8O§ = param1;
      }
      
      public static function §+!Y§(param1:Vector.<§>"-§>, param2:Number = 0) : Rectangle
      {
         var _loc7_:§>"-§ = null;
         var _loc8_:Rectangle = null;
         var _loc3_:Number = Number.MAX_VALUE;
         var _loc4_:Number = Number.MAX_VALUE;
         var _loc5_:Number = -Number.MAX_VALUE;
         var _loc6_:Number = -Number.MAX_VALUE;
         for each(_loc7_ in param1)
         {
            if((_loc8_ = _loc7_.§>!Q§(true)) != null)
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
         §@v§(true);
         this.§8O§.§4+§.§]!D§.objects.setGroundTextureEnabled(false);
         §=D§.§0!E§(true);
         addEventListeners();
      }
      
      public function activate() : void
      {
      }
      
      override public function update(param1:Number) : void
      {
      }
      
      public function get §'!0§() : Boolean
      {
         return this.§#!G§;
      }
      
      public function §,!F§(param1:String) : void
      {
         §>"2§.background.resetLevelBackground(param1);
      }
      
      public function get §=!t§() : Point
      {
         return this.§7!n§;
      }
      
      public function §4j§() : Boolean
      {
         return false;
      }
      
      public function §%G§(param1:String) : Boolean
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
         if(this.§7!n§ == null)
         {
            this.§7!n§ = new Point(param1,param2);
         }
         else
         {
            this.§7!n§.setTo(param1,param2);
         }
         dispatchEvent(new MouseEvent(MouseEvent.MOUSE_MOVE));
      }
      
      override protected function onMouseWheel(param1:MouseEvent) : void
      {
         dispatchEvent(param1);
      }
   }
}
