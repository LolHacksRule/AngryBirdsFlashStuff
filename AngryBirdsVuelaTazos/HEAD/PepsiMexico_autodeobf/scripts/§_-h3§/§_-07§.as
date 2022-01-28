package §_-h3§
{
   public class §_-07§
   {
       
      
      public var mName:String;
      
      public var §_-Dz§:String;
      
      public var §_-A4§:Number;
      
      public var §_-6T§:Array;
      
      public var §_-2m§:Number;
      
      public var §_-VR§:Number;
      
      public var §_-IK§:String;
      
      public var §_-eM§:String;
      
      public var §_-lX§:Number;
      
      public var §_-XD§:String;
      
      public function §_-07§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§_-6T§ = new Array();
         this.§_-2m§ = param3;
         this.§_-VR§ = param4;
         this.§_-IK§ = param5;
         this.§_-Dz§ = param6;
         this.§_-A4§ = param7;
         this.§_-eM§ = param8;
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
            this.§_-K3§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground);
         }
         this.§_-6T§.reverse();
         this.§_-lX§ = param9;
         this.§_-XD§ = param10;
      }
      
      public function §_-K3§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String) : void
      {
         this.§_-6T§[this.§_-6T§.length] = new §_-a§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function §_-Xd§() : Number
      {
         return this.§_-lX§;
      }
   }
}
