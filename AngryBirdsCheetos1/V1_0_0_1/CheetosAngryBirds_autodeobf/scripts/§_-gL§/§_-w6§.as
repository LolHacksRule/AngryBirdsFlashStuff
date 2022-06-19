package §_-gL§
{
   public class §_-w6§
   {
       
      
      public var mName:String;
      
      public var §_-6q§:String;
      
      public var §_-Ew§:Number;
      
      public var §_-EE§:Array;
      
      public var §_-7e§:Number;
      
      public var §_-0-t§:Number;
      
      public var §_-zm§:String;
      
      public var §_-zY§:String;
      
      public var §_-Ce§:Number;
      
      public var §_-Vh§:String;
      
      public function §_-w6§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§_-EE§ = new Array();
         this.§_-7e§ = param3;
         this.§_-0-t§ = param4;
         this.§_-zm§ = param5;
         this.§_-6q§ = param6;
         this.§_-Ew§ = param7;
         this.§_-zY§ = param8;
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
            this.§_-OV§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground);
         }
         this.§_-EE§.reverse();
         this.§_-Ce§ = param9;
         this.§_-Vh§ = param10;
      }
      
      public function §_-OV§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String) : void
      {
         this.§_-EE§[this.§_-EE§.length] = new §_-ui§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16);
      }
      
      public function §extends§() : Number
      {
         return this.§_-Ce§;
      }
   }
}
