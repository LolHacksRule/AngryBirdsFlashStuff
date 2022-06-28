package §_-y7§
{
   import §_-1N§.§_-Kz§;
   import §_-4§.Item;
   import §_-4§.§_-nq§;
   import §_-Mc§.§_-059§;
   import §_-Mc§.§in§;
   import §_-hX§.§_-iS§;
   import §_-wv§.§_-Pj§;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   
   public class §_-zA§ implements §_-iS§
   {
       
      
      private var §_-Hz§:Array;
      
      private var §_-I8§:Boolean = false;
      
      public function §_-zA§()
      {
         this.§_-Hz§ = [];
         super();
      }
      
      public function §_-wV§() : void
      {
         var object:Object = null;
         this.§_-I8§ = true;
         for each(object in this.§_-Hz§)
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
      
      public function §_-Cs§() : void
      {
         this.§_-I8§ = true;
      }
      
      public function render(param1:String, param2:Function, param3:int = 50, param4:Boolean = false) : BitmapData
      {
         var _loc5_:Sprite = null;
         var _loc6_:§_-xe§ = null;
         var _loc7_:Array = null;
         var _loc8_:§_-nq§ = null;
         var _loc9_:Array = null;
         var _loc10_:§in§ = null;
         var _loc11_:§_-059§ = null;
         var _loc12_:Item = null;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:BitmapData = null;
         var _loc16_:§_-059§ = null;
         var _loc17_:Item = null;
         var _loc18_:Matrix = null;
         if(!this.§_-I8§)
         {
            this.§_-Hz§.push({
               "avatarString":param1,
               "callBack":param2,
               "imageSize":param3,
               "ignoreBackground":param4
            });
            return null;
         }
         _loc5_ = new Sprite();
         _loc6_ = new §_-xe§();
         _loc7_ = [];
         for each(_loc8_ in §_-xe§.§_-s2§().characters)
         {
            _loc16_ = new §_-059§(_loc8_);
            _loc7_.push(_loc16_);
         }
         _loc9_ = §_-Pj§.§_-0Bw§(param1);
         _loc10_ = new §in§();
         _loc5_.addChild(_loc10_);
         for each(_loc12_ in _loc9_)
         {
            if(_loc12_.§_-4k§ == "CategoryBirds")
            {
               _loc11_ = _loc10_.§_-071§(_loc12_.§_-1h§,§_-Kz§.§_-xZ§,"CategoryBirds",_loc7_,100,170,true);
            }
         }
         if(param4)
         {
            _loc11_.§_-wf§();
         }
         _loc13_ = param3 * 0.4;
         _loc14_ = param3 / 100 / 2;
         _loc15_ = new BitmapData(param3 + _loc13_,param3 + _loc13_,true,16777215);
         if(_loc11_)
         {
            for each(_loc17_ in _loc9_)
            {
               if(_loc17_.§_-4k§ != "CategoryBirds" && _loc17_.§_-4k§ != "CategoryBackgrounds")
               {
                  _loc11_.§_-QZ§(_loc17_);
               }
               if(_loc17_.§_-4k§ == "CategoryBackgrounds")
               {
                  _loc11_.§_-QQ§(_loc17_.§_-1h§);
               }
            }
            (_loc18_ = new Matrix()).scale(_loc14_,_loc14_);
            _loc18_.translate(_loc13_ / 2,_loc13_ / 2);
            _loc15_.draw(_loc10_,_loc18_,null,null,null,true);
         }
         if(param2 != null)
         {
            param2(_loc15_);
         }
         return _loc15_;
      }
   }
}
