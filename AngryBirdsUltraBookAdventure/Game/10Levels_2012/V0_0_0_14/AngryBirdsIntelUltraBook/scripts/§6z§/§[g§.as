package §6z§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §[g§
   {
      
      public static const §6A§:Boolean = true;
      
      public static const §%!h§:Boolean = true;
      
      public static const § 1§:int = 0;
      
      public static const §6h§:int = 1;
      
      public static const §5g§:int = 500;
      
      private static var §#%§:Array = null;
      
      private static var §@!c§:Number = 0;
      
      public static var §"t§:int = Keyboard.F1;
      
      public static var §-5§:int = Keyboard.F3;
      
      public static var §@!,§:int = Keyboard.F2;
      
      public static var §+x§:int = Keyboard.F4;
      
      public static var §;!!§:Boolean = false;
      
      public static var §4&§:Sprite = null;
      
      private static var §'!A§:TextField = null;
      
      private static var §=V§:TextField = null;
      
      private static var §'$§:TextField = null;
      
      private static var §9C§:TextField = null;
      
      public static var §&!M§:int = -1;
      
      public static var § !M§:String = "version: Unknown";
      
      public static var §`$§:String = "";
      
      {
         init();
      }
      
      public function §[g§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§6A§)
         {
            return;
         }
         §#%§ = new Array(§5g§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§6A§)
         {
            _loc3_ = §@!c§++ % §5g§;
            §#%§[_loc3_] = [param1,param2];
            if(param2 == §&!M§ || §&!M§ < 0)
            {
               §"9§();
            }
         }
         if(§%!h§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §'!T§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §"9§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§6A§)
         {
            return;
         }
         if(§4&§ && §4&§.visible)
         {
            if(§&!M§ < 0)
            {
               §'$§.text = "Current channel: ALL";
            }
            else
            {
               §'$§.text = "Current channel: " + §&!M§;
            }
            if(§ !M§ != null)
            {
               §9C§.text = § !M§;
            }
            _loc1_ = true;
            if(§'!A§.scrollV != §'!A§.numLines - int(§'!A§.height / (§'!A§.textHeight / §'!A§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §5g§)
            {
               _loc4_ = (§@!c§ + _loc3_ + 1) % 500;
               if(§#%§[_loc4_] != null)
               {
                  if(§&!M§ < 0 || §#%§[_loc4_][1] == §&!M§)
                  {
                     _loc2_ += §#%§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §'!A§.text = _loc2_;
            if(_loc1_)
            {
               §'!A§.scrollV = §'!A§.numLines;
            }
         }
      }
      
      public static function §-J§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§6A§)
         {
            return;
         }
         §4&§ = new Sprite();
         §4&§.visible = false;
         param1.addChild(§4&§);
         var _loc7_:Graphics;
         (_loc7_ = §4&§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §'!A§ = new TextField();
         §'!A§.width = param4;
         §'!A§.height = param5 - 40;
         §'!A§.x = param2;
         §'!A§.y = param3 + 40;
         §'!A§.wordWrap = true;
         §4&§.addChild(§'!A§);
         §=V§ = new TextField();
         §=V§.x = param2 + param4 / 2;
         §=V§.y = param3;
         §=V§.width = param4 / 2;
         §=V§.height = 20;
         §=V§.text = "LOGGER CAPTURING INPUT, F4";
         §=V§.border = true;
         §=V§.borderColor = 16711680;
         §4&§.addChild(§=V§);
         §'$§ = new TextField();
         §'$§.width = param4;
         §'$§.height = 20;
         §'$§.x = param2;
         §'$§.y = param3;
         §4&§.addChild(§'$§);
         §9C§ = new TextField();
         §9C§.width = param4;
         §9C§.height = 20;
         §9C§.x = param2;
         §9C§.y = param3 + 20;
         §4&§.addChild(§9C§);
         §3s§(§;!!§);
         if(param6 >= 0)
         {
            param1.addChildAt(§4&§,param6);
         }
         else
         {
            param1.addChild(§4&§);
         }
      }
      
      public static function §3s§(param1:Boolean) : void
      {
         if(!§6A§)
         {
            return;
         }
         §;!!§ = param1;
         §4&§.mouseChildren = §;!!§;
         §4&§.mouseEnabled = §;!!§;
         §'$§.mouseEnabled = §;!!§;
         §9C§.mouseEnabled = §;!!§;
         §'!A§.mouseEnabled = §;!!§;
         §=V§.visible = §;!!§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§6A§)
         {
            return;
         }
      }
      
      public static function §'!L§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §"t§ = param1;
         §@!,§ = param2;
         §-5§ = param3;
      }
      
      public static function §7m§(param1:String) : void
      {
         § !M§ = param1;
      }
   }
}
