package §`"t§
{
   import §#g§.§<!N§;
   import §,#,§.§=#o§;
   import §>#q§.§^!"§;
   import §?#z§.§]$?§;
   import §`D§.§2_§;
   import com.angrybirds.fonts.AngryBirdsFont;
   import com.rovio.assets.§[a§;
   import flash.display.FrameLabel;
   import flash.display.MovieClip;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFormat;
   
   public class §7"U§
   {
      
      protected static var §+#=§:Font = new AngryBirdsFont();
       
      
      public function §7"U§()
      {
         super();
      }
      
      public static function §+$@§(param1:MovieClip, param2:String) : Boolean
      {
         var _loc3_:FrameLabel = null;
         for each(_loc3_ in param1.currentLabels)
         {
            if(_loc3_.name == param2)
            {
               return true;
            }
         }
         return false;
      }
      
      public static function §^!o§(param1:Number) : Boolean
      {
         var _loc2_:Date = new Date();
         var _loc3_:Number = Math.round(_loc2_.valueOf() / 1000 / 60 / 60 / 24);
         var _loc4_:Number;
         return (_loc4_ = _loc3_ - param1) < §<!N§.§'#n§;
      }
      
      public static function §5e§(param1:§2_§) : void
      {
         if(!param1)
         {
            return;
         }
         if(!§=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§["v§(param1.id))
         {
            §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§0#+§,[param1.id]);
         }
         var _loc2_:int = §=#o§(AngryBirdsBase.singleton.dataModel).§%#x§.indexOf(param1.id);
         if(_loc2_ > -1)
         {
            §=#o§(AngryBirdsBase.singleton.dataModel).§%#x§.splice(_loc2_,1);
         }
         var _loc3_:int = 0;
         while(_loc3_ < param1.§set §())
         {
            _loc2_ = §=#o§(AngryBirdsBase.singleton.dataModel).§45§.indexOf(param1.id + param1.getPricePoint(_loc3_).price);
            if(_loc2_ > -1)
            {
               §=#o§(AngryBirdsBase.singleton.dataModel).§8$+§.§-#7§(§^!"§.§0#+§,[param1.id + param1.getPricePoint(_loc3_).price]);
               §=#o§(AngryBirdsBase.singleton.dataModel).§45§.splice(_loc2_,1);
            }
            _loc3_++;
         }
         (§]$?§.§;u§ as §@z§).§!"B§();
      }
      
      public static function §+$5§(param1:TextField, param2:String, param3:Number = 0) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:Number = NaN;
         var _loc9_:String = null;
         param1.text = param2;
         if(!§+#=§.hasGlyphs(param2))
         {
            param1.embedFonts = false;
            param1.setTextFormat(new TextFormat("_sans"));
         }
         else
         {
            param1.embedFonts = true;
            param1.setTextFormat(param1.defaultTextFormat);
         }
         if(param3 > 0)
         {
            if(param1.textWidth > param3)
            {
               _loc4_ = param1.textWidth / param2.length;
               _loc6_ = _loc5_ = param3 / _loc4_;
               _loc7_ = param2.substring(0,_loc6_) + "...";
               param1.text = _loc7_;
               if((_loc8_ = param1.textWidth) > param3)
               {
                  while(_loc8_ > param3 && _loc6_ > 0)
                  {
                     _loc6_--;
                     _loc7_ = param2.substring(0,_loc6_) + "...";
                     param1.text = _loc7_;
                     _loc8_ = param1.textWidth;
                  }
               }
               else if(param1.textWidth < param3)
               {
                  _loc9_ = _loc7_;
                  while(_loc8_ < param3 && _loc6_ < param2.length)
                  {
                     _loc6_++;
                     _loc7_ = param2.substring(0,_loc6_) + "...";
                     param1.text = _loc7_;
                     if((_loc8_ = param1.textWidth) > param3)
                     {
                        param1.text = _loc9_;
                        break;
                     }
                     _loc9_ = _loc7_;
                  }
               }
            }
         }
      }
      
      public static function §!!7§(param1:Number, param2:Number, param3:Number) : Number
      {
         return Math.max(param2,Math.min(param3,param1));
      }
      
      public static function §0!G§(param1:int) : String
      {
         var _loc3_:Number = NaN;
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc2_:* = "";
         if(param1 > 0)
         {
            _loc3_ = 0;
            if((_loc4_ = Math.floor(param1 / 3600)) >= 36)
            {
               _loc3_ = Math.floor(param1 / 86400);
               param1 -= _loc3_ * 86400;
               _loc4_ = Math.floor(param1 / 3600);
            }
            param1 -= _loc4_ * 3600;
            _loc5_ = Math.floor(param1 / 60);
            param1 -= _loc5_ * 60;
            _loc6_ = Math.floor(param1);
            if(_loc5_ < 10)
            {
               _loc5_ = "0" + _loc5_;
            }
            if(_loc6_ < 10)
            {
               _loc6_ = "0" + _loc6_;
            }
            if(_loc3_ > 0)
            {
               _loc2_ = _loc3_ + "d " + _loc4_ + "h";
            }
            else if(_loc4_ > 0)
            {
               if(_loc4_ < 10)
               {
                  _loc4_ = "0" + _loc4_;
               }
               _loc2_ = _loc4_ + ":" + _loc5_ + ":" + _loc6_;
            }
            else
            {
               _loc2_ = "00:" + _loc5_ + ":" + _loc6_;
            }
         }
         else
         {
            _loc2_ = "00:00";
         }
         return _loc2_;
      }
      
      public static function §&#M§(param1:Number) : Array
      {
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         param1 = Math.floor(param1);
         var _loc2_:int = param1 / 60;
         var _loc3_:int = Math.floor(_loc2_ / 1440);
         var _loc4_:* = "";
         if(_loc3_ > 0)
         {
            if(_loc3_ == 1)
            {
               _loc4_ = _loc3_ + " day ";
            }
            else
            {
               _loc4_ = _loc3_ + " days ";
            }
            _loc6_ = Math.floor((_loc2_ - _loc3_ * 1440) / 60);
            _loc4_ += _loc6_ + "h";
         }
         else if((_loc6_ = Math.floor(_loc2_ / 60)) == 0)
         {
            if(param1 >= 60)
            {
               _loc4_ = _loc2_ + "min ";
               _loc7_ = Math.floor(param1 - _loc2_ * 60);
               _loc4_ += _loc7_ + "s";
            }
            else
            {
               _loc4_ = param1 + "s";
            }
         }
         else
         {
            _loc4_ = _loc6_ + "h ";
            _loc8_ = Math.floor(_loc2_ - _loc6_ * 60);
            _loc4_ += _loc8_ + "min";
         }
         return [_loc4_,16777215];
      }
      
      public static function §7#m§(param1:String, param2:String, param3:MovieClip) : void
      {
         var _loc5_:int = 0;
         var _loc6_:MovieClip = null;
         var _loc4_:Class;
         if(_loc4_ = §[a§.§8#k§(param1,false,false))
         {
            _loc5_ = 1;
            _loc6_ = param3.getChildByName(param2 + "_" + _loc5_) as MovieClip;
            while(_loc6_)
            {
               _loc6_.removeChildren();
               _loc6_.addChild(new _loc4_());
               _loc5_++;
               _loc6_ = param3.getChildByName(param2 + "_" + _loc5_) as MovieClip;
            }
         }
      }
   }
}
