package §2!,§
{
   public class §8E§
   {
       
      
      public var mName:String;
      
      public var §2T§:String;
      
      public var §!!@§:Number;
      
      public var §2s§:Array;
      
      public var §'1§:Number;
      
      public var §6!7§:Number;
      
      public var final:String;
      
      public var §2!1§:String;
      
      public var §13§:Number;
      
      public var §,!G§:String;
      
      public function §8E§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         super();
         this.mName = param1;
         if(_loc18_ || param2)
         {
            this.§2s§ = new Array();
            this.§'1§ = param3;
            this.§6!7§ = param4;
            if(!_loc19_)
            {
               addr49:
               this.final = param5;
               if(_loc18_)
               {
                  this.§2T§ = param6;
                  if(_loc18_)
                  {
                     addr59:
                     this.§!!@§ = param7;
                     if(_loc18_ || param1)
                     {
                        addr69:
                        this.§2!1§ = param8;
                     }
                  }
                  for each(_loc11_ in param2.Layer)
                  {
                     _loc12_ = [];
                     if(!_loc19_)
                     {
                        var _loc16_:int = 0;
                        if(!(_loc19_ && param1))
                        {
                           for each(_loc13_ in _loc11_.ParticleEmitter)
                           {
                              if(_loc18_)
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
                        if(_loc19_)
                        {
                           continue;
                        }
                     }
                     this.§1!G§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
                  }
                  if(_loc18_ || param1)
                  {
                     this.§2s§.reverse();
                     if(_loc18_)
                     {
                        this.§13§ = param9;
                        if(_loc18_ || this)
                        {
                        }
                        §§goto(addr299);
                     }
                     this.§,!G§ = param10;
                  }
                  addr299:
                  return;
               }
               §§goto(addr69);
            }
            §§goto(addr59);
         }
         §§goto(addr49);
      }
      
      public function §1!G§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(_loc19_ || param1)
         {
            this.§2s§[this.§2s§.length] = new §++§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §default§() : Number
      {
         return this.§13§;
      }
   }
}
