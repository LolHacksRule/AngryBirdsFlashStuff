package §<!!§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §-"§
   {
      
      public static const §&C§:Boolean = true;
      
      public static const §3]§:Boolean = true;
      
      public static const §8!5§:int = 0;
      
      public static const §<!c§:int = 1;
      
      public static const §+!1§:int = 500;
      
      private static var §&!S§:Array = null;
      
      private static var § !A§:Number = 0;
      
      public static var §0G§:int = Keyboard.F1;
      
      public static var §?3§:int = Keyboard.F3;
      
      public static var §5!d§:int = Keyboard.F2;
      
      public static var §&U§:int = Keyboard.F4;
      
      public static var §#!b§:Boolean = false;
      
      public static var §5>§:Sprite = null;
      
      private static var §,4§:TextField = null;
      
      private static var §'#§:TextField = null;
      
      private static var §7!W§:TextField = null;
      
      private static var §]E§:TextField = null;
      
      public static var §3>§:int = -1;
      
      public static var §3h§:String = "version: Unknown";
      
      public static var §3!B§:String = "";
      
      {
         init();
      }
      
      public function §-"§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§&C§)
         {
            return;
         }
         §&!S§ = new Array(§+!1§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§&C§)
         {
            _loc3_ = § !A§++ % §+!1§;
            §&!S§[_loc3_] = [param1,param2];
            if(param2 == §3>§ || §3>§ < 0)
            {
               §`X§();
            }
         }
         if(§3]§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §[`§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §`X§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§&C§)
         {
            return;
         }
         if(§5>§ && §5>§.visible)
         {
            if(§3>§ < 0)
            {
               §7!W§.text = "Current channel: ALL";
            }
            else
            {
               §7!W§.text = "Current channel: " + §3>§;
            }
            if(§3h§ != null)
            {
               §]E§.text = §3h§;
            }
            _loc1_ = true;
            if(§,4§.scrollV != §,4§.numLines - int(§,4§.height / (§,4§.textHeight / §,4§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §+!1§)
            {
               _loc4_ = (§ !A§ + _loc3_ + 1) % 500;
               if(§&!S§[_loc4_] != null)
               {
                  if(§3>§ < 0 || §&!S§[_loc4_][1] == §3>§)
                  {
                     _loc2_ += §&!S§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            §,4§.text = _loc2_;
            if(_loc1_)
            {
               §,4§.scrollV = §,4§.numLines;
            }
         }
      }
      
      public static function §-!§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§&C§)
         {
            return;
         }
         §5>§ = new Sprite();
         §5>§.visible = false;
         param1.addChild(§5>§);
         var _loc7_:Graphics;
         (_loc7_ = §5>§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         §,4§ = new TextField();
         §,4§.width = param4;
         §,4§.height = param5 - 40;
         §,4§.x = param2;
         §,4§.y = param3 + 40;
         §,4§.wordWrap = true;
         §5>§.addChild(§,4§);
         §'#§ = new TextField();
         §'#§.x = param2 + param4 / 2;
         §'#§.y = param3;
         §'#§.width = param4 / 2;
         §'#§.height = 20;
         §'#§.text = "LOGGER CAPTURING INPUT, F4";
         §'#§.border = true;
         §'#§.borderColor = 16711680;
         §5>§.addChild(§'#§);
         §7!W§ = new TextField();
         §7!W§.width = param4;
         §7!W§.height = 20;
         §7!W§.x = param2;
         §7!W§.y = param3;
         §5>§.addChild(§7!W§);
         §]E§ = new TextField();
         §]E§.width = param4;
         §]E§.height = 20;
         §]E§.x = param2;
         §]E§.y = param3 + 20;
         §5>§.addChild(§]E§);
         §1!!§(§#!b§);
         if(param6 >= 0)
         {
            param1.addChildAt(§5>§,param6);
         }
         else
         {
            param1.addChild(§5>§);
         }
      }
      
      public static function §1!!§(param1:Boolean) : void
      {
         if(!§&C§)
         {
            return;
         }
         §#!b§ = param1;
         §5>§.mouseChildren = §#!b§;
         §5>§.mouseEnabled = §#!b§;
         §7!W§.mouseEnabled = §#!b§;
         §]E§.mouseEnabled = §#!b§;
         §,4§.mouseEnabled = §#!b§;
         §'#§.visible = §#!b§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§&C§)
         {
            return;
         }
      }
      
      public static function §+b§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §0G§ = param1;
         §5!d§ = param2;
         §?3§ = param3;
      }
      
      public static function §="§(param1:String) : void
      {
         §3h§ = param1;
      }
   }
}
