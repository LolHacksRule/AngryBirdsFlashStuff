package §;4§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §]!%§
   {
      
      public static const §9M§:Boolean = true;
      
      public static const §5!j§:Boolean = true;
      
      public static const §9!Q§:int = 0;
      
      public static const §%h§:int = 1;
      
      public static const §[7§:int = 500;
      
      private static var §`3§:Array = null;
      
      private static var §<!4§:Number = 0;
      
      public static var §@W§:int = Keyboard.F1;
      
      public static var §?Y§:int = Keyboard.F3;
      
      public static var §%v§:int = Keyboard.F2;
      
      public static var §9!D§:int = Keyboard.F4;
      
      public static var §#!8§:Boolean = false;
      
      public static var §?s§:Sprite = null;
      
      private static var §5"0§:TextField = null;
      
      private static var §0M§:TextField = null;
      
      private static var §&!Z§:TextField = null;
      
      private static var §3C§:TextField = null;
      
      public static var §7!t§:int = -1;
      
      public static var §]a§:String = "version: Unknown";
      
      public static var §8M§:String = "";
      
      {
         init();
      }
      
      public function §]!%§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§9M§)
         {
            return;
         }
         §`3§ = new Array(§[7§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§9M§)
         {
            _loc3_ = §<!4§++ % §[7§;
            §`3§[_loc3_] = [param1,param2];
            if(param2 == §7!t§ || §7!t§ < 0)
            {
               §,^§();
            }
         }
         if(§5!j§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §<S§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §,^§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§9M§)
         {
            return;
         }
         if(§?s§ && §?s§.visible)
         {
            if(§7!t§ < 0)
            {
               §&!Z§.text = "Current channel: ALL";
            }
            else
            {
               §&!Z§.text = "Current channel: " + §7!t§;
            }
            if(§]a§ != null)
            {
               §3C§.text = §]a§;
            }
            _loc1_ = true;
            if(§5"0§.scrollV != §5"0§.numLines - int(§5"0§.height / (§5"0§.textHeight / §5"0§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §[7§)
            {
               _loc4_ = (§<!4§ + _loc3_ + 1) % 500;
               if(§`3§[_loc4_] != null)
               {
                  if(§7!t§ < 0 || §`3§[_loc4_][1] == §7!t§)
                  {
                     _loc2_ += §`3§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §5"0§.text = _loc2_;
            if(_loc1_)
            {
               §5"0§.scrollV = §5"0§.numLines;
            }
         }
      }
      
      public static function §,!j§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§9M§)
         {
            return;
         }
         §?s§ = new Sprite();
         §?s§.visible = false;
         param1.addChild(§?s§);
         var _loc7_:Graphics;
         (_loc7_ = §?s§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §5"0§ = new TextField();
         §5"0§.width = param4;
         §5"0§.height = param5 - 40;
         §5"0§.x = param2;
         §5"0§.y = param3 + 40;
         §5"0§.wordWrap = true;
         §?s§.addChild(§5"0§);
         §0M§ = new TextField();
         §0M§.x = param2 + param4 / 2;
         §0M§.y = param3;
         §0M§.width = param4 / 2;
         §0M§.height = 20;
         §0M§.text = "LOGGER CAPTURING INPUT, F4";
         §0M§.border = true;
         §0M§.borderColor = 16711680;
         §?s§.addChild(§0M§);
         §&!Z§ = new TextField();
         §&!Z§.width = param4;
         §&!Z§.height = 20;
         §&!Z§.x = param2;
         §&!Z§.y = param3;
         §?s§.addChild(§&!Z§);
         §3C§ = new TextField();
         §3C§.width = param4;
         §3C§.height = 20;
         §3C§.x = param2;
         §3C§.y = param3 + 20;
         §?s§.addChild(§3C§);
         §'@§(§#!8§);
         if(param6 >= 0)
         {
            param1.addChildAt(§?s§,param6);
         }
         else
         {
            param1.addChild(§?s§);
         }
      }
      
      public static function §'@§(param1:Boolean) : void
      {
         if(!§9M§)
         {
            return;
         }
         §#!8§ = param1;
         §?s§.mouseChildren = §#!8§;
         §?s§.mouseEnabled = §#!8§;
         §&!Z§.mouseEnabled = §#!8§;
         §3C§.mouseEnabled = §#!8§;
         §5"0§.mouseEnabled = §#!8§;
         §0M§.visible = §#!8§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§9M§)
         {
            return;
         }
      }
      
      public static function §`D§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §@W§ = param1;
         §%v§ = param2;
         §?Y§ = param3;
      }
      
      public static function §?x§(param1:String) : void
      {
         §]a§ = param1;
      }
   }
}
