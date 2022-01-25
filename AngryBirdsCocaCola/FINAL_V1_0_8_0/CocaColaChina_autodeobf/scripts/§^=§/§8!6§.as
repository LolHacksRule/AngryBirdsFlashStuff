package §^=§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §8!6§
   {
      
      public static const §1#§:Boolean = true;
      
      public static const §^!2§:Boolean = true;
      
      public static const §8=§:int = 0;
      
      public static const §"p§:int = 1;
      
      public static const §6e§:int = 500;
      
      private static var §"!F§:Array = null;
      
      private static var §7v§:Number = 0;
      
      public static var §#!T§:int = Keyboard.F1;
      
      public static var §0b§:int = Keyboard.F3;
      
      public static var §9h§:int = Keyboard.F2;
      
      public static var §2!6§:int = Keyboard.F4;
      
      public static var §&!7§:Boolean = false;
      
      public static var §&!!§:Sprite = null;
      
      private static var §]!6§:TextField = null;
      
      private static var §'!G§:TextField = null;
      
      private static var §>3§:TextField = null;
      
      private static var §;!Q§:TextField = null;
      
      public static var §[P§:int = -1;
      
      public static var §"!d§:String = "version: Unknown";
      
      public static var §,`§:String = "";
      
      {
         init();
      }
      
      public function §8!6§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§1#§)
         {
            return;
         }
         §"!F§ = new Array(§6e§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§1#§)
         {
            _loc3_ = §7v§++ % §6e§;
            §"!F§[_loc3_] = [param1,param2];
            if(param2 == §[P§ || §[P§ < 0)
            {
               §>!R§();
            }
         }
         if(§^!2§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §6b§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §>!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§1#§)
         {
            return;
         }
         if(§&!!§ && §&!!§.visible)
         {
            if(§[P§ < 0)
            {
               §>3§.text = "Current channel: ALL";
            }
            else
            {
               §>3§.text = "Current channel: " + §[P§;
            }
            if(§"!d§ != null)
            {
               §;!Q§.text = §"!d§;
            }
            _loc1_ = true;
            if(§]!6§.scrollV != §]!6§.numLines - int(§]!6§.height / (§]!6§.textHeight / §]!6§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §6e§)
            {
               _loc4_ = (§7v§ + _loc3_ + 1) % 500;
               if(§"!F§[_loc4_] != null)
               {
                  if(§[P§ < 0 || §"!F§[_loc4_][1] == §[P§)
                  {
                     _loc2_ += §"!F§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §]!6§.text = _loc2_;
            if(_loc1_)
            {
               §]!6§.scrollV = §]!6§.numLines;
            }
         }
      }
      
      public static function § do§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§1#§)
         {
            return;
         }
         §&!!§ = new Sprite();
         §&!!§.visible = false;
         param1.addChild(§&!!§);
         var _loc7_:Graphics;
         (_loc7_ = §&!!§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §]!6§ = new TextField();
         §]!6§.width = param4;
         §]!6§.height = param5 - 40;
         §]!6§.x = param2;
         §]!6§.y = param3 + 40;
         §]!6§.wordWrap = true;
         §&!!§.addChild(§]!6§);
         §'!G§ = new TextField();
         §'!G§.x = param2 + param4 / 2;
         §'!G§.y = param3;
         §'!G§.width = param4 / 2;
         §'!G§.height = 20;
         §'!G§.text = "LOGGER CAPTURING INPUT, F4";
         §'!G§.border = true;
         §'!G§.borderColor = 16711680;
         §&!!§.addChild(§'!G§);
         §>3§ = new TextField();
         §>3§.width = param4;
         §>3§.height = 20;
         §>3§.x = param2;
         §>3§.y = param3;
         §&!!§.addChild(§>3§);
         §;!Q§ = new TextField();
         §;!Q§.width = param4;
         §;!Q§.height = 20;
         §;!Q§.x = param2;
         §;!Q§.y = param3 + 20;
         §&!!§.addChild(§;!Q§);
         §43§(§&!7§);
         if(param6 >= 0)
         {
            param1.addChildAt(§&!!§,param6);
         }
         else
         {
            param1.addChild(§&!!§);
         }
      }
      
      public static function §43§(param1:Boolean) : void
      {
         if(!§1#§)
         {
            return;
         }
         §&!7§ = param1;
         §&!!§.mouseChildren = §&!7§;
         §&!!§.mouseEnabled = §&!7§;
         §>3§.mouseEnabled = §&!7§;
         §;!Q§.mouseEnabled = §&!7§;
         §]!6§.mouseEnabled = §&!7§;
         §'!G§.visible = §&!7§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§1#§)
         {
            return;
         }
      }
      
      public static function §!^§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §#!T§ = param1;
         §9h§ = param2;
         §0b§ = param3;
      }
      
      public static function §5!X§(param1:String) : void
      {
         §"!d§ = param1;
      }
   }
}
