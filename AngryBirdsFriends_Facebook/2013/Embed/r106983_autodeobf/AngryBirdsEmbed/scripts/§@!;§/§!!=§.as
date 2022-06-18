package §@!;§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §!!=§
   {
      
      public static const §>J§:Boolean = true;
      
      public static const § 3§:Boolean = true;
      
      public static const §>Q§:int = 0;
      
      public static const §^!2§:int = 1;
      
      public static const §=K§:int = 500;
      
      private static var §-!<§:Array = null;
      
      private static var §+[§:Number = 0;
      
      public static var §=!A§:int = Keyboard.F1;
      
      public static var §7d§:int = Keyboard.F3;
      
      public static var §-2§:int = Keyboard.F2;
      
      public static var §[f§:int = Keyboard.F4;
      
      public static var §9!#§:Boolean = false;
      
      public static var §8a§:Sprite = null;
      
      private static var §]!,§:TextField = null;
      
      private static var §<m§:TextField = null;
      
      private static var §87§:TextField = null;
      
      private static var §>>§:TextField = null;
      
      public static var §^l§:int = -1;
      
      public static var §'!M§:String = "version: Unknown";
      
      public static var §=z§:String = "";
      
      {
         init();
      }
      
      public function §!!=§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§>J§)
         {
            return;
         }
         §-!<§ = new Array(§=K§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§>J§)
         {
            _loc3_ = §+[§++ % §=K§;
            §-!<§[_loc3_] = [param1,param2];
            if(param2 == §^l§ || §^l§ < 0)
            {
               §=A§();
            }
         }
         if(§ 3§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §%!1§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §=A§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§>J§)
         {
            return;
         }
         if(§8a§ && §8a§.visible)
         {
            if(§^l§ < 0)
            {
               §87§.text = "Current channel: ALL";
            }
            else
            {
               §87§.text = "Current channel: " + §^l§;
            }
            if(§'!M§ != null)
            {
               §>>§.text = §'!M§;
            }
            _loc1_ = true;
            if(§]!,§.scrollV != §]!,§.numLines - int(§]!,§.height / (§]!,§.textHeight / §]!,§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §=K§)
            {
               _loc4_ = (§+[§ + _loc3_ + 1) % 500;
               if(§-!<§[_loc4_] != null)
               {
                  if(§^l§ < 0 || §-!<§[_loc4_][1] == §^l§)
                  {
                     _loc2_ += §-!<§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §]!,§.text = _loc2_;
            if(_loc1_)
            {
               §]!,§.scrollV = §]!,§.numLines;
            }
         }
      }
      
      public static function §9Z§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§>J§)
         {
            return;
         }
         §8a§ = new Sprite();
         §8a§.visible = false;
         param1.addChild(§8a§);
         var _loc7_:Graphics;
         (_loc7_ = §8a§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §]!,§ = new TextField();
         §]!,§.width = param4;
         §]!,§.height = param5 - 40;
         §]!,§.x = param2;
         §]!,§.y = param3 + 40;
         §]!,§.wordWrap = true;
         §8a§.addChild(§]!,§);
         §<m§ = new TextField();
         §<m§.x = param2 + param4 / 2;
         §<m§.y = param3;
         §<m§.width = param4 / 2;
         §<m§.height = 20;
         §<m§.text = "LOGGER CAPTURING INPUT, F4";
         §<m§.border = true;
         §<m§.borderColor = 16711680;
         §8a§.addChild(§<m§);
         §87§ = new TextField();
         §87§.width = param4;
         §87§.height = 20;
         §87§.x = param2;
         §87§.y = param3;
         §8a§.addChild(§87§);
         §>>§ = new TextField();
         §>>§.width = param4;
         §>>§.height = 20;
         §>>§.x = param2;
         §>>§.y = param3 + 20;
         §8a§.addChild(§>>§);
         §1q§(§9!#§);
         if(param6 >= 0)
         {
            param1.addChildAt(§8a§,param6);
         }
         else
         {
            param1.addChild(§8a§);
         }
      }
      
      public static function §1q§(param1:Boolean) : void
      {
         if(!§>J§)
         {
            return;
         }
         §9!#§ = param1;
         §8a§.mouseChildren = §9!#§;
         §8a§.mouseEnabled = §9!#§;
         §87§.mouseEnabled = §9!#§;
         §>>§.mouseEnabled = §9!#§;
         §]!,§.mouseEnabled = §9!#§;
         §<m§.visible = §9!#§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§>J§)
         {
            return;
         }
      }
      
      public static function §&!;§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §=!A§ = param1;
         §-2§ = param2;
         §7d§ = param3;
      }
      
      public static function §6-§(param1:String) : void
      {
         §'!M§ = param1;
      }
   }
}
