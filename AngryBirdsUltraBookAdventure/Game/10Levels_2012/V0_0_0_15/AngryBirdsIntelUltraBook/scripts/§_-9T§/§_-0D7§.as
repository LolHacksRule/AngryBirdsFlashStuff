package §_-9T§
{
   public class §_-0D7§
   {
       
      
      public var mName:String;
      
      public var §_-M8§:String;
      
      public var §_-Xa§:Number;
      
      public var §_-Ac§:Array;
      
      public var §_-Zy§:Number;
      
      public var §_-0-9§:Number;
      
      public var §_-2z§:String;
      
      public var §_-YF§:String;
      
      public var §_-05k§:Number;
      
      public var §_-hF§:String;
      
      public function §_-0D7§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§_-Ac§ = new Array();
         this.§_-Zy§ = param3;
         this.§_-0-9§ = param4;
         this.§_-2z§ = param5;
         this.§_-M8§ = param6;
         this.§_-Xa§ = param7;
         this.§_-YF§ = param8;
         for each(_loc11_ in param2.Layer)
         {
            _loc12_ = [];
            for each(_loc13_ in _loc11_.ParticleEmitter)
            {
               _loc12_.push({
                  "id":_loc13_.@id.toString(),
                  "x":Number(_loc13_.@x) || 0,
                  "y":Number(_loc13_.@y) || 0,
                  "rotation":Number(_loc13_.@rotation) || 0,
                  "scale":Number(_loc13_.@scale) || 1,
                  "alpha":Number(_loc13_.@alpha) || 1,
                  "fastForwardsAfterAdd":Number(_loc13_.@fastForwardsAfterAdd) || 0,
                  "isBehindGraphic":_loc13_.@behindGraphic.toString().toLowerCase() == "true"
               });
            }
            this.§_-2U§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
         }
         this.§_-Ac§.reverse();
         this.§_-05k§ = param9;
         this.§_-hF§ = param10;
      }
      
      public function §_-2U§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         this.§_-Ac§[this.§_-Ac§.length] = new §_-QO§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
      }
      
      public function §_-ez§() : Number
      {
         return this.§_-05k§;
      }
   }
}
