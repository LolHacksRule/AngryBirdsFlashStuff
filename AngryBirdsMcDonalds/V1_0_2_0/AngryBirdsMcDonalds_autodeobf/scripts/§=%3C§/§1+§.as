package §=<§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §1+§
   {
      
      public static const §>&§:Boolean = true;
      
      public static const §[4§:Boolean = true;
      
      public static const §8!8§:int = 0;
      
      public static const §%j§:int = 1;
      
      public static const §0!o§:int = 500;
      
      private static var §%f§:Array = null;
      
      private static var §#!L§:Number = 0;
      
      public static var §<a§:int = Keyboard.F1;
      
      public static var §+t§:int = Keyboard.F3;
      
      public static var §'^§:int = Keyboard.F2;
      
      public static var §!P§:int = Keyboard.F4;
      
      public static var §^!Q§:Boolean = false;
      
      public static var §?!#§:Sprite = null;
      
      private static var §%!Y§:TextField = null;
      
      private static var §;!f§:TextField = null;
      
      private static var §<y§:TextField = null;
      
      private static var § S§:TextField = null;
      
      public static var §8c§:int = -1;
      
      public static var §6u§:String = "version: Unknown";
      
      public static var §5!G§:String = "";
      
      {
         init();
      }
      
      public function §1+§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§>&§)
         {
            return;
         }
         §%f§ = new Array(§0!o§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§>&§)
         {
            _loc3_ = §#!L§++ % §0!o§;
            §%f§[_loc3_] = [param1,param2];
            if(param2 == §8c§ || §8c§ < 0)
            {
               §2q§();
            }
         }
         if(§[4§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §-4§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §2q§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§>&§)
         {
            return;
         }
         if(§?!#§ && §?!#§.visible)
         {
            if(§8c§ < 0)
            {
               §<y§.text = "Current channel: ALL";
            }
            else
            {
               §<y§.text = "Current channel: " + §8c§;
            }
            if(§6u§ != null)
            {
               § S§.text = §6u§;
            }
            _loc1_ = true;
            if(§%!Y§.scrollV != §%!Y§.numLines - int(§%!Y§.height / (§%!Y§.textHeight / §%!Y§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §0!o§)
            {
               _loc4_ = (§#!L§ + _loc3_ + 1) % 500;
               if(§%f§[_loc4_] != null)
               {
                  if(§8c§ < 0 || §%f§[_loc4_][1] == §8c§)
                  {
                     _loc2_ += §%f§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §%!Y§.text = _loc2_;
            if(_loc1_)
            {
               §%!Y§.scrollV = §%!Y§.numLines;
            }
         }
      }
      
      public static function §4!%§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§>&§)
         {
            return;
         }
         §?!#§ = new Sprite();
         §?!#§.visible = false;
         param1.addChild(§?!#§);
         var _loc7_:Graphics;
         (_loc7_ = §?!#§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §%!Y§ = new TextField();
         §%!Y§.width = param4;
         §%!Y§.height = param5 - 40;
         §%!Y§.x = param2;
         §%!Y§.y = param3 + 40;
         §%!Y§.wordWrap = true;
         §?!#§.addChild(§%!Y§);
         §;!f§ = new TextField();
         §;!f§.x = param2 + param4 / 2;
         §;!f§.y = param3;
         §;!f§.width = param4 / 2;
         §;!f§.height = 20;
         §;!f§.text = "LOGGER CAPTURING INPUT, F4";
         §;!f§.border = true;
         §;!f§.borderColor = 16711680;
         §?!#§.addChild(§;!f§);
         §<y§ = new TextField();
         §<y§.width = param4;
         §<y§.height = 20;
         §<y§.x = param2;
         §<y§.y = param3;
         §?!#§.addChild(§<y§);
         § S§ = new TextField();
         § S§.width = param4;
         § S§.height = 20;
         § S§.x = param2;
         § S§.y = param3 + 20;
         §?!#§.addChild(§ S§);
         §?h§(§^!Q§);
         if(param6 >= 0)
         {
            param1.addChildAt(§?!#§,param6);
         }
         else
         {
            param1.addChild(§?!#§);
         }
      }
      
      public static function §?h§(param1:Boolean) : void
      {
         if(!§>&§)
         {
            return;
         }
         §^!Q§ = param1;
         §?!#§.mouseChildren = §^!Q§;
         §?!#§.mouseEnabled = §^!Q§;
         §<y§.mouseEnabled = §^!Q§;
         § S§.mouseEnabled = §^!Q§;
         §%!Y§.mouseEnabled = §^!Q§;
         §;!f§.visible = §^!Q§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§>&§)
         {
            return;
         }
      }
      
      public static function §<Q§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §<a§ = param1;
         §'^§ = param2;
         §+t§ = param3;
      }
      
      public static function §`d§(param1:String) : void
      {
         §6u§ = param1;
      }
   }
}
