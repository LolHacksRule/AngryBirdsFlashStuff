package §,n§
{
   import §1"1§.§3!m§;
   import §1"o§.§<s§;
   import §1"o§.Avatar;
   import §4#[§.§6U§;
   import §6#s§.§8#?§;
   import §6#s§.Item;
   import flash.display.BitmapData;
   import flash.display.MovieClip;
   import flash.geom.Matrix;
   
   public class §3#2§ implements §2m§
   {
       
      
      private var §7"+§:Array;
      
      private var §2"r§:Boolean = false;
      
      public function §3#2§()
      {
         this.§7"+§ = [];
         super();
      }
      
      public function §-$0§() : void
      {
         var object:Object = null;
         this.§2"r§ = true;
         for each(object in this.§7"+§)
         {
            try
            {
               this.render(object.avatarString,object.callBack,object.imageSize,object.ignoreBackground);
            }
            catch(e:Error)
            {
            }
         }
      }
      
      public function §5#h§() : void
      {
         this.§2"r§ = true;
      }
      
      public function §=#<§(param1:Avatar) : void
      {
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false, param5:Object = null, param6:Avatar = null, param7:int = 0, param8:Boolean = false, param9:Number = 0.4) : BitmapData
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Array = null;
         var _loc13_:§<s§ = null;
         var _loc14_:BitmapData = null;
         var _loc15_:MovieClip = null;
         var _loc16_:Item = null;
         var _loc17_:§8#?§ = null;
         var _loc18_:Item = null;
         var _loc19_:Matrix = null;
         if(!this.§2"r§)
         {
            this.§7"+§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc10_ = param3 * param9;
         _loc11_ = param3 / 100 / 2;
         _loc12_ = §6U§.§;!,§(param1);
         _loc13_ = new §<s§();
         if(!param6)
         {
            for each(_loc16_ in _loc12_)
            {
               if(_loc16_.§3$1§ == "CategoryBirds")
               {
                  _loc17_ = §3!m§.§3!]§.characters.§]"T§(_loc16_.mId);
                  param6 = new Avatar(_loc17_);
               }
            }
         }
         if(param6)
         {
            _loc13_.§,!l§(param6,100,170 + param7,true);
         }
         _loc14_ = new BitmapData(param3 + _loc10_,param3 + _loc10_ + param7,true,16777215);
         _loc15_ = new MovieClip();
         if(param6)
         {
            if(param4)
            {
               param6.§?#l§();
            }
            for each(_loc18_ in _loc12_)
            {
               if(_loc18_.§3$1§ != "CategoryBirds" && _loc18_.§3$1§ != "CategoryBackgrounds")
               {
                  param6.§0!G§(_loc18_);
               }
               if(_loc18_.§3$1§ == "CategoryBackgrounds")
               {
                  param6.§-"u§(_loc18_.mId);
               }
            }
            _loc15_ = param6.§3"Y§();
            if(param5)
            {
               _loc15_.gotoAndStop(param5);
            }
            (_loc19_ = new Matrix()).scale(_loc11_,_loc11_);
            _loc19_.translate(_loc10_ / 2,_loc10_ / 2);
            _loc14_.draw(_loc13_,_loc19_,null,null,null,true);
         }
         _loc13_.dispose();
         _loc13_ = null;
         if(param2 != null)
         {
            param2(_loc14_,_loc15_);
         }
         return _loc14_;
      }
   }
}
