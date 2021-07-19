package §+!9§
{
   public class §1!3§
   {
       
      
      public var mName:String;
      
      public var §%`§:String;
      
      public var §;&§:Number;
      
      public var §5?§:Array;
      
      public var §6!2§:Number;
      
      public var §%!M§:Number;
      
      public var §>Z§:String;
      
      public var §-!Z§:String;
      
      public var §4;§:Number;
      
      public var §%!Q§:String;
      
      public function §1!3§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(!_loc19_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               addr95:
               while(true)
               {
                  this.§5?§ = new Array();
               }
               addr34:
               if(!(_loc18_ || param1))
               {
                  continue;
               }
               addr41:
               if(false)
               {
                  loop7:
                  while(true)
                  {
                     this.§;&§ = param7;
                     while(true)
                     {
                        if(_loc18_)
                        {
                           if(!_loc19_)
                           {
                              addr51:
                              if(!(_loc18_ || param3))
                              {
                                 break;
                              }
                              this.§-!Z§ = param8;
                              if(!_loc18_)
                              {
                                 continue;
                              }
                              §§goto(addr34);
                           }
                           while(true)
                           {
                              this.§%`§ = param6;
                           }
                           addr70:
                        }
                        while(!_loc19_)
                        {
                           continue loop7;
                        }
                        loop4:
                        while(true)
                        {
                           if(_loc18_)
                           {
                              if(_loc19_)
                              {
                                 break;
                              }
                              this.§>Z§ = param5;
                              §§goto(addr70);
                           }
                           addr84:
                           while(true)
                           {
                              this.§%!M§ = param4;
                              continue loop4;
                           }
                        }
                        §§goto(addr95);
                     }
                     addr90:
                     while(true)
                     {
                        this.§6!2§ = param3;
                        §§goto(addr84);
                        §§goto(addr51);
                     }
                  }
               }
               var _loc14_:int = 0;
               var _loc15_:* = param2.Layer;
               addr287:
               for each(_loc11_ in _loc15_)
               {
                  _loc12_ = [];
                  if(!_loc19_)
                  {
                     var _loc16_:int = 0;
                     if(!(_loc19_ && this))
                     {
                        var _loc17_:* = _loc11_.ParticleEmitter;
                        addr229:
                        for each(_loc13_ in _loc17_)
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
                           §§goto(addr229);
                        }
                        addr232:
                        if(!_loc19_)
                        {
                           addr235:
                           this.§?X§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
                        }
                        §§goto(addr287);
                     }
                     §§goto(addr232);
                  }
                  §§goto(addr235);
               }
               if(_loc18_)
               {
                  this.§5?§.reverse();
               }
               this.§4;§ = param9;
               addr319:
               if(!_loc19_)
               {
                  this.§%!Q§ = param10;
                  if(_loc19_)
                  {
                     §§goto(addr319);
                  }
                  return;
               }
               addr325:
               §§goto(addr325);
            }
         }
         §§goto(addr90);
      }
      
      public function §?X§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(_loc18_)
         {
            this.§5?§[this.§5?§.length] = new §'!>§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §`K§() : Number
      {
         return this.§4;§;
      }
   }
}
