package §!6§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §3!5§
   {
      
      public static const §"s§:Boolean = true;
      
      public static const §5M§:Boolean = true;
      
      public static const §]H§:int = 0;
      
      public static const §^c§:int = 1;
      
      public static const §10§:int = 500;
      
      private static var § N§:Array = null;
      
      private static var §@3§:Number = 0;
      
      public static var §3W§:int = Keyboard.F1;
      
      public static var §9w§:int = Keyboard.F3;
      
      public static var §87§:int = Keyboard.F2;
      
      public static var §9M§:int = Keyboard.F4;
      
      public static var §7K§:Boolean = false;
      
      public static var §=!M§:Sprite = null;
      
      private static var §`G§:TextField = null;
      
      private static var §<J§:TextField = null;
      
      private static var §-A§:TextField = null;
      
      private static var §&_§:TextField = null;
      
      public static var §1!I§:int = -1;
      
      public static var § q§:String = "version: Unknown";
      
      public static var §8!A§:String = "";
      
      {
         init();
      }
      
      public function §3!5§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§"s§)
         {
            return;
         }
         § N§ = new Array(§10§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§"s§)
         {
            _loc3_ = §@3§++ % §10§;
            § N§[_loc3_] = [param1,param2];
            if(param2 == §1!I§ || §1!I§ < 0)
            {
               §!R§();
            }
         }
         if(§5M§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §7!&§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §!R§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§"s§)
         {
            return;
         }
         if(§=!M§ && §=!M§.visible)
         {
            if(§1!I§ < 0)
            {
               §-A§.text = "Current channel: ALL";
            }
            else
            {
               §-A§.text = "Current channel: " + §1!I§;
            }
            if(§ q§ != null)
            {
               §&_§.text = § q§;
            }
            _loc1_ = true;
            if(§`G§.scrollV != §`G§.numLines - int(§`G§.height / (§`G§.textHeight / §`G§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §10§)
            {
               _loc4_ = (§@3§ + _loc3_ + 1) % 500;
               if(§ N§[_loc4_] != null)
               {
                  if(§1!I§ < 0 || § N§[_loc4_][1] == §1!I§)
                  {
                     _loc2_ += § N§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §`G§.text = _loc2_;
            if(_loc1_)
            {
               §`G§.scrollV = §`G§.numLines;
            }
         }
      }
      
      public static function §8l§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§"s§)
         {
            return;
         }
         §=!M§ = new Sprite();
         §=!M§.visible = false;
         param1.addChild(§=!M§);
         var _loc7_:Graphics;
         (_loc7_ = §=!M§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §`G§ = new TextField();
         §`G§.width = param4;
         §`G§.height = param5 - 40;
         §`G§.x = param2;
         §`G§.y = param3 + 40;
         §`G§.wordWrap = true;
         §=!M§.addChild(§`G§);
         §<J§ = new TextField();
         §<J§.x = param2 + param4 / 2;
         §<J§.y = param3;
         §<J§.width = param4 / 2;
         §<J§.height = 20;
         §<J§.text = "LOGGER CAPTURING INPUT, F4";
         §<J§.border = true;
         §<J§.borderColor = 16711680;
         §=!M§.addChild(§<J§);
         §-A§ = new TextField();
         §-A§.width = param4;
         §-A§.height = 20;
         §-A§.x = param2;
         §-A§.y = param3;
         §=!M§.addChild(§-A§);
         §&_§ = new TextField();
         §&_§.width = param4;
         §&_§.height = 20;
         §&_§.x = param2;
         §&_§.y = param3 + 20;
         §=!M§.addChild(§&_§);
         §-!1§(§7K§);
         if(param6 >= 0)
         {
            param1.addChildAt(§=!M§,param6);
         }
         else
         {
            param1.addChild(§=!M§);
         }
      }
      
      public static function §-!1§(param1:Boolean) : void
      {
         if(!§"s§)
         {
            return;
         }
         §7K§ = param1;
         §=!M§.mouseChildren = §7K§;
         §=!M§.mouseEnabled = §7K§;
         §-A§.mouseEnabled = §7K§;
         §&_§.mouseEnabled = §7K§;
         §`G§.mouseEnabled = §7K§;
         §<J§.visible = §7K§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§"s§)
         {
            return;
         }
      }
      
      public static function §&!=§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §3W§ = param1;
         §87§ = param2;
         §9w§ = param3;
      }
      
      public static function §4!%§(param1:String) : void
      {
         § q§ = param1;
      }
   }
}
