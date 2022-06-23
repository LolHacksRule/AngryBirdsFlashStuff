package §5!%§
{
   public class §`Z§
   {
       
      
      public var mName:String;
      
      public var §2q§:String;
      
      public var §']§:Number;
      
      public var §,q§:Array;
      
      public var §6P§:Number;
      
      public var §7!§:Number;
      
      public var §1q§:String;
      
      public var §!j§:String;
      
      public var §=2§:Number;
      
      public var §>#§:String;
      
      public function §`Z§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         if(_loc19_)
         {
            this.§,q§ = new Array();
            this.§6P§ = param3;
            if(_loc19_)
            {
               addr42:
               this.§7!§ = param4;
               if(_loc19_)
               {
                  this.§1q§ = param5;
                  this.§2q§ = param6;
                  if(_loc18_ && this)
                  {
                  }
                  §§goto(addr63);
               }
               this.§']§ = param7;
            }
            addr63:
            this.§!j§ = param8;
            for each(_loc11_ in param2.Layer)
            {
               _loc12_ = [];
               if(_loc19_ || this)
               {
                  var _loc16_:int = 0;
                  if(_loc19_ || this)
                  {
                     for each(_loc13_ in _loc11_.ParticleEmitter)
                     {
                        if(_loc19_)
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
                     }
                  }
                  if(!_loc19_)
                  {
                     continue;
                  }
               }
               this.§'6§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
            }
            if(!_loc18_)
            {
               this.§,q§.reverse();
               if(_loc19_)
               {
                  this.§=2§ = param9;
                  if(!_loc18_)
                  {
                     this.§>#§ = param10;
                  }
               }
            }
            return;
         }
         §§goto(addr42);
      }
      
      public function §'6§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(!_loc18_)
         {
            this.§,q§[this.§,q§.length] = new §4D§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §10§() : Number
      {
         return this.§=2§;
      }
   }
}
