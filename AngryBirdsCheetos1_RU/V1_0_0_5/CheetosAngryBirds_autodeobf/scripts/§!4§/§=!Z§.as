package §!4§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §=!Z§
   {
      
      public static const §<!§:Boolean = true;
      
      public static const §4!^§:Boolean = true;
      
      public static const §-!V§:int = 0;
      
      public static const §3!T§:int = 1;
      
      public static const §8m§:int = 500;
      
      private static var §9m§:Array = null;
      
      private static var §`!I§:Number = 0;
      
      public static var §<f§:int = Keyboard.F1;
      
      public static var §#D§:int = Keyboard.F3;
      
      public static var §<!]§:int = Keyboard.F2;
      
      public static var §=R§:int = Keyboard.F4;
      
      public static var §^@§:Boolean = false;
      
      public static var §5=§:Sprite = null;
      
      private static var §`!K§:TextField = null;
      
      private static var §-!F§:TextField = null;
      
      private static var §8-§:TextField = null;
      
      private static var §5`§:TextField = null;
      
      public static var §'^§:int = -1;
      
      public static var §1a§:String = "version: Unknown";
      
      public static var §&U§:String = "";
      
      {
         init();
      }
      
      public function §=!Z§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§<!§)
         {
            return;
         }
         §9m§ = new Array(§8m§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§<!§)
         {
            _loc3_ = §`!I§++ % §8m§;
            §9m§[_loc3_] = [param1,param2];
            if(param2 == §'^§ || §'^§ < 0)
            {
               §2!C§();
            }
         }
         if(§4!^§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §+!`§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §2!C§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§<!§)
         {
            return;
         }
         if(§5=§ && §5=§.visible)
         {
            if(§'^§ < 0)
            {
               §8-§.text = "Current channel: ALL";
            }
            else
            {
               §8-§.text = "Current channel: " + §'^§;
            }
            if(§1a§ != null)
            {
               §5`§.text = §1a§;
            }
            _loc1_ = true;
            if(§`!K§.scrollV != §`!K§.numLines - int(§`!K§.height / (§`!K§.textHeight / §`!K§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §8m§)
            {
               _loc4_ = (§`!I§ + _loc3_ + 1) % 500;
               if(§9m§[_loc4_] != null)
               {
                  if(§'^§ < 0 || §9m§[_loc4_][1] == §'^§)
                  {
                     _loc2_ += §9m§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §`!K§.text = _loc2_;
            if(_loc1_)
            {
               §`!K§.scrollV = §`!K§.numLines;
            }
         }
      }
      
      public static function §<b§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§<!§)
         {
            return;
         }
         §5=§ = new Sprite();
         §5=§.visible = false;
         param1.addChild(§5=§);
         var _loc7_:Graphics;
         (_loc7_ = §5=§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §`!K§ = new TextField();
         §`!K§.width = param4;
         §`!K§.height = param5 - 40;
         §`!K§.x = param2;
         §`!K§.y = param3 + 40;
         §`!K§.wordWrap = true;
         §5=§.addChild(§`!K§);
         §-!F§ = new TextField();
         §-!F§.x = param2 + param4 / 2;
         §-!F§.y = param3;
         §-!F§.width = param4 / 2;
         §-!F§.height = 20;
         §-!F§.text = "LOGGER CAPTURING INPUT, F4";
         §-!F§.border = true;
         §-!F§.borderColor = 16711680;
         §5=§.addChild(§-!F§);
         §8-§ = new TextField();
         §8-§.width = param4;
         §8-§.height = 20;
         §8-§.x = param2;
         §8-§.y = param3;
         §5=§.addChild(§8-§);
         §5`§ = new TextField();
         §5`§.width = param4;
         §5`§.height = 20;
         §5`§.x = param2;
         §5`§.y = param3 + 20;
         §5=§.addChild(§5`§);
         §=[§(§^@§);
         if(param6 >= 0)
         {
            param1.addChildAt(§5=§,param6);
         }
         else
         {
            param1.addChild(§5=§);
         }
      }
      
      public static function §=[§(param1:Boolean) : void
      {
         if(!§<!§)
         {
            return;
         }
         §^@§ = param1;
         §5=§.mouseChildren = §^@§;
         §5=§.mouseEnabled = §^@§;
         §8-§.mouseEnabled = §^@§;
         §5`§.mouseEnabled = §^@§;
         §`!K§.mouseEnabled = §^@§;
         §-!F§.visible = §^@§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§<!§)
         {
            return;
         }
      }
      
      public static function §!2§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §<f§ = param1;
         §<!]§ = param2;
         §#D§ = param3;
      }
      
      public static function §=3§(param1:String) : void
      {
         §1a§ = param1;
      }
   }
}
