package §,!Q§
{
   public class §0@§
   {
       
      
      public var mName:String;
      
      public var §@-§:String;
      
      public var §3r§:Number;
      
      public var §3!>§:Array;
      
      public var §%s§:Number;
      
      public var §`!A§:Number;
      
      public var §-r§:String;
      
      public var §9X§:String;
      
      public var §>j§:Number;
      
      public var §]!k§:String;
      
      public function §0@§(param1:String, param2:XMLList, param3:Number, param4:Number, param5:String, param6:String, param7:Number, param8:String, param9:Number, param10:String)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc11_:XML = null;
         var _loc12_:Array = null;
         var _loc13_:XML = null;
         if(_loc18_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               loop1:
               while(!_loc19_)
               {
                  this.§3!>§ = new Array();
                  loop2:
                  while(true)
                  {
                     this.§%s§ = param3;
                     loop3:
                     while(true)
                     {
                        this.§`!A§ = param4;
                        while(true)
                        {
                           this.§-r§ = param5;
                           while(_loc18_)
                           {
                              while(_loc18_ || param2)
                              {
                                 if(_loc18_)
                                 {
                                    while(true)
                                    {
                                       this.§3r§ = param7;
                                       continue loop3;
                                    }
                                    continue;
                                    if(_loc19_ && param3)
                                    {
                                       continue;
                                    }
                                    if(_loc19_)
                                    {
                                       continue loop1;
                                    }
                                    if(true)
                                    {
                                       for each(_loc11_ in param2.Layer)
                                       {
                                          _loc12_ = [];
                                          if(_loc18_)
                                          {
                                             var _loc16_:int = 0;
                                             if(_loc18_)
                                             {
                                                for each(_loc13_ in _loc11_.ParticleEmitter)
                                                {
                                                   if(_loc18_ || param3)
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
                                             if(_loc18_ || param3)
                                             {
                                                this.§in§(_loc11_.@id,_loc11_.@speed,-1,0,0,_loc11_.@foreground != 0,_loc11_.@static.toString().toLowerCase() == "true",_loc11_.@scale,_loc11_.@tileable.toString().toLowerCase() != "false",_loc11_.@xOffset,_loc11_.@marginX,_loc11_.@bottomOffset,_loc12_,_loc11_.@optional.toString().toLowerCase() == "true",_loc11_.@sky,_loc11_.@ground,_loc11_.@highQuality.toString().toLowerCase() == "true");
                                             }
                                          }
                                       }
                                       if(_loc18_)
                                       {
                                          this.§3!>§.reverse();
                                       }
                                       do
                                       {
                                          this.§>j§ = param9;
                                          do
                                          {
                                             this.§]!k§ = param10;
                                          }
                                          while(_loc19_);
                                          
                                       }
                                       while(!(_loc18_ || param3));
                                       
                                       return;
                                    }
                                    §§goto(addr50);
                                    addr50:
                                 }
                                 continue loop2;
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§@-§ = param6;
            §§goto(addr66);
         }
      }
      
      public function §in§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(!_loc19_)
         {
            this.§3!>§[this.§3!>§.length] = new §,!-§(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param12,param13,param14,param15,param16,param17);
         }
      }
      
      public function §;h§() : Number
      {
         return this.§>j§;
      }
   }
}
