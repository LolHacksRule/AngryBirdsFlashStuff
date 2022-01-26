package §_-1Z§
{
   public class §_-RB§
   {
       
      
      public var mName:String;
      
      public var §_-67§:String;
      
      public var §_-mc§:Number;
      
      public var §_-XB§:Array;
      
      public var §_-yo§:Number;
      
      public var §_-ks§:Number;
      
      public var §_-mW§:String;
      
      public var §_-QI§:String;
      
      public var §_-Ex§:Number;
      
      public var §_-BD§:String;
      
      public function §_-RB§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         this.§_-XB§ = new Array();
         this.§_-yo§ = param3;
         this.§_-ks§ = param4;
         this.§_-mW§ = param5;
         this.§_-67§ = param6;
         this.§_-mc§ = param7;
         this.§_-QI§ = param8;
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
            this.§_-1l§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_);
         }
         this.§_-XB§.reverse();
         this.§_-Ex§ = param9;
         this.§_-BD§ = param10;
      }
      
      public function §_-1l§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array) : void
      {
         this.§_-XB§[this.§_-XB§.length] = new §_-m8§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13);
      }
      
      public function §_-ir§() : Number
      {
         return this.§_-Ex§;
      }
   }
}
