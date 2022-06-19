package §0!?§
{
   import flash.display.DisplayObjectContainer;
   import flash.display.Graphics;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.getQualifiedClassName;
   
   public class §'!$§
   {
      
      public static const §0!E§:Boolean = true;
      
      public static const §8$§:Boolean = true;
      
      public static const § y§:int = 0;
      
      public static const §8!Q§:int = 1;
      
      public static const §<!J§:int = 500;
      
      private static var §]_§:Array = null;
      
      private static var §6a§:Number = 0;
      
      public static var §<!X§:int = Keyboard.F1;
      
      public static var §9!2§:int = Keyboard.F3;
      
      public static var §2!t§:int = Keyboard.F2;
      
      public static var §-3§:int = Keyboard.F4;
      
      public static var §6!R§:Boolean = false;
      
      public static var §00§:Sprite = null;
      
      private static var § I§:TextField = null;
      
      private static var §]X§:TextField = null;
      
      private static var §0!x§:TextField = null;
      
      private static var §+4§:TextField = null;
      
      public static var §!"&§:int = -1;
      
      public static var §2V§:String = "version: Unknown";
      
      public static var §&!9§:String = "";
      
      {
         init();
      }
      
      public function §'!$§()
      {
         super();
      }
      
      public static function init() : void
      {
         if(!§0!E§)
         {
            return;
         }
         §]_§ = new Array(§<!J§);
      }
      
      public static function log(param1:Object, param2:int = 1) : void
      {
         var _loc3_:Number = NaN;
         if(§0!E§)
         {
            _loc3_ = §6a§++ % §<!J§;
            §]_§[_loc3_] = [param1,param2];
            if(param2 == §!"&§ || §!"&§ < 0)
            {
               §`!4§();
            }
         }
         if(§8$§)
         {
            if(!param1)
            {
            }
         }
      }
      
      public static function §<O§(param1:Object, param2:int = 1) : void
      {
         var _loc3_:* = undefined;
         log("Object:" + getQualifiedClassName(param1));
         for(_loc3_ in param1)
         {
            log("-[" + _loc3_ + "]: " + param1[_loc3_]);
         }
      }
      
      private static function §`!4§() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:String = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(!§0!E§)
         {
            return;
         }
         if(§00§ && §00§.visible)
         {
            if(§!"&§ < 0)
            {
               §0!x§.text = "Current channel: ALL";
            }
            else
            {
               §0!x§.text = "Current channel: " + §!"&§;
            }
            if(§2V§ != null)
            {
               §+4§.text = §2V§;
            }
            _loc1_ = true;
            if(§ I§.scrollV != § I§.numLines - int(§ I§.height / (§ I§.textHeight / § I§.numLines)))
            {
               _loc1_ = false;
            }
            _loc2_ = "";
            _loc3_ = 0;
            while(_loc3_ < §<!J§)
            {
               _loc4_ = (§6a§ + _loc3_ + 1) % 500;
               if(§]_§[_loc4_] != null)
               {
                  if(§!"&§ < 0 || §]_§[_loc4_][1] == §!"&§)
                  {
                     _loc2_ += §]_§[_loc4_][0] + "\n";
                  }
               }
               _loc3_++;
            }
            § I§.text = _loc2_;
            if(_loc1_)
            {
               § I§.scrollV = § I§.numLines;
            }
         }
      }
      
      public static function §<_§(param1:DisplayObjectContainer, param2:int = 40, param3:int = 40, param4:int = 540, param5:int = 360, param6:int = -1) : void
      {
         if(!§0!E§)
         {
            return;
         }
         §00§ = new Sprite();
         §00§.visible = false;
         param1.addChild(§00§);
         var _loc7_:Graphics;
         (_loc7_ = §00§.graphics).beginFill(16777215,0);
         _loc7_.drawRect(0,0,1000,1000);
         _loc7_.endFill();
         _loc7_.beginFill(16777215,0.4);
         _loc7_.drawRect(param2,param3,param4,param5);
         _loc7_.endFill();
         § I§ = new TextField();
         § I§.width = param4;
         § I§.height = param5 - 40;
         § I§.x = param2;
         § I§.y = param3 + 40;
         § I§.wordWrap = true;
         §00§.addChild(§ I§);
         §]X§ = new TextField();
         §]X§.x = param2 + param4 / 2;
         §]X§.y = param3;
         §]X§.width = param4 / 2;
         §]X§.height = 20;
         §]X§.text = "LOGGER CAPTURING INPUT, F4";
         §]X§.border = true;
         §]X§.borderColor = 16711680;
         §00§.addChild(§]X§);
         §0!x§ = new TextField();
         §0!x§.width = param4;
         §0!x§.height = 20;
         §0!x§.x = param2;
         §0!x§.y = param3;
         §00§.addChild(§0!x§);
         §+4§ = new TextField();
         §+4§.width = param4;
         §+4§.height = 20;
         §+4§.x = param2;
         §+4§.y = param3 + 20;
         §00§.addChild(§+4§);
         §6"!§(§6!R§);
         if(param6 >= 0)
         {
            param1.addChildAt(§00§,param6);
         }
         else
         {
            param1.addChild(§00§);
         }
      }
      
      public static function §6"!§(param1:Boolean) : void
      {
         if(!§0!E§)
         {
            return;
         }
         §6!R§ = param1;
         §00§.mouseChildren = §6!R§;
         §00§.mouseEnabled = §6!R§;
         §0!x§.mouseEnabled = §6!R§;
         §+4§.mouseEnabled = §6!R§;
         § I§.mouseEnabled = §6!R§;
         §]X§.visible = §6!R§;
      }
      
      public static function keyDown(param1:KeyboardEvent) : void
      {
         if(!§0!E§)
         {
            return;
         }
      }
      
      public static function §<!y§(param1:int = 113, param2:int = 115, param3:int = 114, param4:int = 117) : void
      {
         §<!X§ = param1;
         §2!t§ = param2;
         §9!2§ = param3;
      }
      
      public static function §^C§(param1:String) : void
      {
         §2V§ = param1;
      }
   }
}
