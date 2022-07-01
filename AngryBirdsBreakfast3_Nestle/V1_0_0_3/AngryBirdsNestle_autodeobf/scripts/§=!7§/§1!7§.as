package §=!7§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §1!7§
   {
      
      public static const §0f§:Boolean = true;
      
      public static const §2,§:Boolean = true;
      
      public static const §8"%§:int = 0;
      
      public static const override:int = 1;
      
      public static const §9!3§:int = 500;
      
      private static var § H§:Array = null;
      
      private static var §>!M§:Number = 0;
      
      public static var §>!!§:int = Keyboard.F1;
      
      public static var §8Y§:int = Keyboard.F3;
      
      public static var §try§:int = Keyboard.F2;
      
      public static var §8^§:int = Keyboard.F4;
      
      public static var §-!i§:Boolean = false;
      
      public static var §0!n§:Sprite = null;
      
      private static var §]!Q§:TextField = null;
      
      private static var §;;§:TextField = null;
      
      private static var §>!e§:TextField = null;
      
      private static var §42§:TextField = null;
      
      public static var §]!P§:int = -1;
      
      public static var §%`§:String = "version: Unknown";
      
      public static var §%"4§:String = "";
      
      {
         init();
      }
      
      public function §1!7§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§0f§)
         {
            return;
         }
         § H§ = new Array(§9!3§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§0f§)
         {
            _loc3_ = §>!M§++ % §9!3§;
            § H§[_loc3_] = [param1,param2];
            if(param2 == §]!P§ || §]!P§ < 0)
            {
               §7G§();
            }
         }
         if(§2,§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §-n§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §7G§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§0f§)
         {
            return;
         }
         if(§0!n§ && §0!n§.visible)
         {
            if(§]!P§ < 0)
            {
               §>!e§.text = "Current channel: ALL";
            }
            else
            {
               §>!e§.text = "Current channel: " + §]!P§;
            }
            if(§%`§ != null)
            {
               §42§.text = §%`§;
            }
            _loc1_ = true;
            if(§]!Q§.scrollV != §]!Q§.numLines - int(§]!Q§.height / (§]!Q§.textHeight / §]!Q§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §9!3§)
            {
               _loc4_ = (§>!M§ + _loc3_ + 1) % 500;
               if(§ H§[_loc4_] != null)
               {
                  if(§]!P§ < 0 || § H§[_loc4_][1] == §]!P§)
                  {
                     _loc2_ += § H§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §]!Q§.text = _loc2_;
            if(_loc1_)
            {
               §]!Q§.scrollV = §]!Q§.numLines;
            }
         }
      }
      
      public static function §%!g§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§0f§)
         {
            return;
         }
         §0!n§ = new Sprite();
         §0!n§.visible = false;
         param1.addChild(§0!n§);
         var _loc7_:Graphics;
         (_loc7_ = §0!n§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §]!Q§ = new TextField();
         §]!Q§.width = param4;
         §]!Q§.height = param5 - 40;
         §]!Q§.x = param2;
         §]!Q§.y = param3 + 40;
         §]!Q§.wordWrap = true;
         §0!n§.addChild(§]!Q§);
         §;;§ = new TextField();
         §;;§.x = param2 + param4 / 2;
         §;;§.y = param3;
         §;;§.width = param4 / 2;
         §;;§.height = 20;
         §;;§.text = "LOGGER CAPTURING INPUT, F4";
         §;;§.border = true;
         §;;§.borderColor = 16711680;
         §0!n§.addChild(§;;§);
         §>!e§ = new TextField();
         §>!e§.width = param4;
         §>!e§.height = 20;
         §>!e§.x = param2;
         §>!e§.y = param3;
         §0!n§.addChild(§>!e§);
         §42§ = new TextField();
         §42§.width = param4;
         §42§.height = 20;
         §42§.x = param2;
         §42§.y = param3 + 20;
         §0!n§.addChild(§42§);
         §?H§(§-!i§);
         if(param6 >= 0)
         {
            param1.addChildAt(§0!n§,param6);
         }
         else
         {
            param1.addChild(§0!n§);
         }
      }
      
      public static function §?H§(param1:Boolean) : void
      {
         if(!§0f§)
         {
            return;
         }
         §-!i§ = param1;
         §0!n§.mouseChildren = §-!i§;
         §0!n§.mouseEnabled = §-!i§;
         §>!e§.mouseEnabled = §-!i§;
         §42§.mouseEnabled = §-!i§;
         §]!Q§.mouseEnabled = §-!i§;
         §;;§.visible = §-!i§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§0f§)
         {
            return;
         }
      }
      
      public static function §9!m§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §>!!§ = param1;
         §try§ = param2;
         §8Y§ = param3;
      }
      
      public static function §%S§(param1:String) : void
      {
         §%`§ = param1;
      }
   }
}
