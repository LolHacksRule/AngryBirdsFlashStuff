package §5K§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §[C§
   {
      
      public static const §^5§:Boolean = true;
      
      public static const §1H§:Boolean = true;
      
      public static const §3!C§:int = 0;
      
      public static const §-8§:int = 1;
      
      public static const §"!R§:int = 500;
      
      private static var §5!T§:Array = null;
      
      private static var §]!-§:Number = 0;
      
      public static var §'!`§:int = Keyboard.F1;
      
      public static var §9r§:int = Keyboard.F3;
      
      public static var §4k§:int = Keyboard.F2;
      
      public static var §0!?§:int = Keyboard.F4;
      
      public static var §;G§:Boolean = false;
      
      public static var §8!J§:Sprite = null;
      
      private static var §]!F§:TextField = null;
      
      private static var §,!'§:TextField = null;
      
      private static var §[!K§:TextField = null;
      
      private static var §var§:TextField = null;
      
      public static var § !e§:int = -1;
      
      public static var §?M§:String = "version: Unknown";
      
      public static var §[H§:String = "";
      
      {
         init();
      }
      
      public function §[C§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§^5§)
         {
            return;
         }
         §5!T§ = new Array(§"!R§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§^5§)
         {
            _loc3_ = §]!-§++ % §"!R§;
            §5!T§[_loc3_] = [param1,param2];
            if(param2 == § !e§ || § !e§ < 0)
            {
               §3!l§();
            }
         }
         if(§1H§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §&?§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §3!l§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§^5§)
         {
            return;
         }
         if(§8!J§ && §8!J§.visible)
         {
            if(§ !e§ < 0)
            {
               §[!K§.text = "Current channel: ALL";
            }
            else
            {
               §[!K§.text = "Current channel: " + § !e§;
            }
            if(§?M§ != null)
            {
               §var§.text = §?M§;
            }
            _loc1_ = true;
            if(§]!F§.scrollV != §]!F§.numLines - int(§]!F§.height / (§]!F§.textHeight / §]!F§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §"!R§)
            {
               _loc4_ = (§]!-§ + _loc3_ + 1) % 500;
               if(§5!T§[_loc4_] != null)
               {
                  if(§ !e§ < 0 || §5!T§[_loc4_][1] == § !e§)
                  {
                     _loc2_ += §5!T§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §]!F§.text = _loc2_;
            if(_loc1_)
            {
               §]!F§.scrollV = §]!F§.numLines;
            }
         }
      }
      
      public static function § 5§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§^5§)
         {
            return;
         }
         §8!J§ = new Sprite();
         §8!J§.visible = false;
         param1.addChild(§8!J§);
         var _loc7_:Graphics;
         (_loc7_ = §8!J§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §]!F§ = new TextField();
         §]!F§.width = param4;
         §]!F§.height = param5 - 40;
         §]!F§.x = param2;
         §]!F§.y = param3 + 40;
         §]!F§.wordWrap = true;
         §8!J§.addChild(§]!F§);
         §,!'§ = new TextField();
         §,!'§.x = param2 + param4 / 2;
         §,!'§.y = param3;
         §,!'§.width = param4 / 2;
         §,!'§.height = 20;
         §,!'§.text = "LOGGER CAPTURING INPUT, F4";
         §,!'§.border = true;
         §,!'§.borderColor = 16711680;
         §8!J§.addChild(§,!'§);
         §[!K§ = new TextField();
         §[!K§.width = param4;
         §[!K§.height = 20;
         §[!K§.x = param2;
         §[!K§.y = param3;
         §8!J§.addChild(§[!K§);
         §var§ = new TextField();
         §var§.width = param4;
         §var§.height = 20;
         §var§.x = param2;
         §var§.y = param3 + 20;
         §8!J§.addChild(§var§);
         § f§(§;G§);
         if(param6 >= 0)
         {
            param1.addChildAt(§8!J§,param6);
         }
         else
         {
            param1.addChild(§8!J§);
         }
      }
      
      public static function § f§(param1:Boolean) : void
      {
         if(!§^5§)
         {
            return;
         }
         §;G§ = param1;
         §8!J§.mouseChildren = §;G§;
         §8!J§.mouseEnabled = §;G§;
         §[!K§.mouseEnabled = §;G§;
         §var§.mouseEnabled = §;G§;
         §]!F§.mouseEnabled = §;G§;
         §,!'§.visible = §;G§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§^5§)
         {
            return;
         }
      }
      
      public static function §#!b§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §'!`§ = param1;
         §4k§ = param2;
         §9r§ = param3;
      }
      
      public static function §-!'§(param1:String) : void
      {
         §?M§ = param1;
      }
   }
}
