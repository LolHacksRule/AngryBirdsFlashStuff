package §%!$§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §[Z§
   {
      
      public static const §7^§:Boolean = true;
      
      public static const §+^§:Boolean = true;
      
      public static const §?E§:int = 0;
      
      public static const §#Q§:int = 1;
      
      public static const § @§:int = 500;
      
      private static var §9m§:Array = null;
      
      private static var § j§:Number = 0;
      
      public static var §+![§:int = Keyboard.F1;
      
      public static var §4!W§:int = Keyboard.F3;
      
      public static var §?J§:int = Keyboard.F2;
      
      public static var §,X§:int = Keyboard.F4;
      
      public static var §8N§:Boolean = false;
      
      public static var §37§:Sprite = null;
      
      private static var §'!S§:TextField = null;
      
      private static var §^b§:TextField = null;
      
      private static var §&!J§:TextField = null;
      
      private static var §,>§:TextField = null;
      
      public static var §1,§:int = -1;
      
      public static var §=E§:String = "version: Unknown";
      
      public static var §7!O§:String = "";
      
      {
         init();
      }
      
      public function §[Z§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§7^§)
         {
            return;
         }
         §9m§ = new Array(§ @§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§7^§)
         {
            _loc3_ = § j§++ % § @§;
            §9m§[_loc3_] = [param1,param2];
            if(param2 == §1,§ || §1,§ < 0)
            {
               §<d§();
            }
         }
         if(§+^§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §3!W§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §<d§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§7^§)
         {
            return;
         }
         if(§37§ && §37§.visible)
         {
            if(§1,§ < 0)
            {
               §&!J§.text = "Current channel: ALL";
            }
            else
            {
               §&!J§.text = "Current channel: " + §1,§;
            }
            if(§=E§ != null)
            {
               §,>§.text = §=E§;
            }
            _loc1_ = true;
            if(§'!S§.scrollV != §'!S§.numLines - int(§'!S§.height / (§'!S§.textHeight / §'!S§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < § @§)
            {
               _loc4_ = (§ j§ + _loc3_ + 1) % 500;
               if(§9m§[_loc4_] != null)
               {
                  if(§1,§ < 0 || §9m§[_loc4_][1] == §1,§)
                  {
                     _loc2_ += §9m§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §'!S§.text = _loc2_;
            if(_loc1_)
            {
               §'!S§.scrollV = §'!S§.numLines;
            }
         }
      }
      
      public static function §0!?§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§7^§)
         {
            return;
         }
         §37§ = new Sprite();
         §37§.visible = false;
         param1.addChild(§37§);
         var _loc7_:Graphics;
         (_loc7_ = §37§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §'!S§ = new TextField();
         §'!S§.width = param4;
         §'!S§.height = param5 - 40;
         §'!S§.x = param2;
         §'!S§.y = param3 + 40;
         §'!S§.wordWrap = true;
         §37§.addChild(§'!S§);
         §^b§ = new TextField();
         §^b§.x = param2 + param4 / 2;
         §^b§.y = param3;
         §^b§.width = param4 / 2;
         §^b§.height = 20;
         §^b§.text = "LOGGER CAPTURING INPUT, F4";
         §^b§.border = true;
         §^b§.borderColor = 16711680;
         §37§.addChild(§^b§);
         §&!J§ = new TextField();
         §&!J§.width = param4;
         §&!J§.height = 20;
         §&!J§.x = param2;
         §&!J§.y = param3;
         §37§.addChild(§&!J§);
         §,>§ = new TextField();
         §,>§.width = param4;
         §,>§.height = 20;
         §,>§.x = param2;
         §,>§.y = param3 + 20;
         §37§.addChild(§,>§);
         §4i§(§8N§);
         if(param6 >= 0)
         {
            param1.addChildAt(§37§,param6);
         }
         else
         {
            param1.addChild(§37§);
         }
      }
      
      public static function §4i§(param1:Boolean) : void
      {
         if(!§7^§)
         {
            return;
         }
         §8N§ = param1;
         §37§.mouseChildren = §8N§;
         §37§.mouseEnabled = §8N§;
         §&!J§.mouseEnabled = §8N§;
         §,>§.mouseEnabled = §8N§;
         §'!S§.mouseEnabled = §8N§;
         §^b§.visible = §8N§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§7^§)
         {
            return;
         }
      }
      
      public static function §=`§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §+![§ = param1;
         §?J§ = param2;
         §4!W§ = param3;
      }
      
      public static function §^!K§(param1:String) : void
      {
         §=E§ = param1;
      }
   }
}
