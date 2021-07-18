package §69§
{
   public class §""H§ extends §4!e§
   {
       
      
      protected var §>#-§:String;
      
      protected var §6#U§:String;
      
      protected var §%" §:String;
      
      protected var §6c§:String;
      
      protected var §<"R§:Number = 1.0;
      
      protected var §8"2§:Number = 1.0;
      
      protected var §]J§:Array;
      
      protected var §="y§:Boolean;
      
      public function §""H§(param1:String, param2:int, param3:int, param4:String, param5:String, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Number, param12:Number, param13:Array)
      {
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = true;
         if(_loc15_ || this)
         {
            super(param1,param2,param3,param4,param5,param10);
            while(true)
            {
               this.§>#-§ = param6;
            }
            addr130:
         }
         loop1:
         while(true)
         {
            this.§6#U§ = param7;
            while(true)
            {
               this.§%" § = param8;
               loop3:
               while(_loc15_)
               {
                  if(!_loc15_)
                  {
                     continue loop1;
                  }
                  this.§6c§ = param9;
                  loop4:
                  while(_loc15_)
                  {
                     this.§8"2§ = param11;
                     loop5:
                     while(true)
                     {
                        this.§<"R§ = param12;
                        do
                        {
                           if(_loc15_)
                           {
                              if(!param13)
                              {
                                 if(!_loc14_)
                                 {
                                    continue loop5;
                                 }
                              }
                              else
                              {
                                 this.§]J§ = param13.concat();
                                 if(_loc15_)
                                 {
                                    if(!_loc14_)
                                    {
                                       §§goto(addr25);
                                    }
                                    continue loop3;
                                 }
                              }
                              continue;
                           }
                           continue loop4;
                        }
                        while(!(_loc15_ || param2));
                        
                        addr25:
                        return;
                     }
                  }
                  §§goto(addr130);
               }
            }
         }
      }
      
      public function get §?c§() : String
      {
         return this.§>#-§;
      }
      
      public function get § "&§() : String
      {
         return this.§6#U§;
      }
      
      public function get §6"2§() : String
      {
         return this.§%" §;
      }
      
      public function get §?!^§() : String
      {
         return this.§6c§;
      }
      
      public function get textureScale() : Number
      {
         return this.§<"R§;
      }
      
      public function get §9#K§() : Array
      {
         return this.§]J§.concat();
      }
      
      override public function get colorGround() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc2_)
         {
            if(this.§="y§)
            {
               if(!_loc1_)
               {
                  addr49:
                  §§push(super.colorGround);
                  if(!_loc1_)
                  {
                     return §§pop();
                  }
               }
               else
               {
                  addr54:
                  return 0;
               }
               return §§pop();
            }
            §§goto(addr54);
         }
         §§goto(addr49);
      }
      
      private function §@"^§(param1:Object, param2:Boolean = false) : void
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 782
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §1!7§(param1:Array, param2:Array) : void
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:Array = null;
         var _loc6_:Object = null;
         var _loc7_:int = 0;
         var _loc8_:* = param1;
         loop0:
         while(true)
         {
            §§push(§§hasnext(_loc8_,_loc7_));
            if(!_loc10_)
            {
               if(§§pop())
               {
                  _loc3_ = §§nextvalue(_loc7_,_loc8_);
                  if(_loc9_)
                  {
                     this.§@"^§(_loc3_,false);
                  }
                  continue;
               }
               if(!_loc10_)
               {
                  if(!_loc10_)
                  {
                     if(!_loc10_)
                     {
                        _loc7_ = 0;
                        if(!_loc10_)
                        {
                           addr72:
                           _loc8_ = param2;
                           while(true)
                           {
                              §§push(§§hasnext(_loc8_,_loc7_));
                              break loop0;
                           }
                           addr131:
                        }
                     }
                     return;
                  }
               }
               §§goto(addr72);
            }
            break;
         }
         while(true)
         {
            if(§§pop())
            {
               _loc4_ = §§nextvalue(_loc7_,_loc8_);
               if(_loc4_ is Array)
               {
                  if((_loc5_ = _loc4_ as Array).length >= 4)
                  {
                     _loc6_ = {
                        "sprite":_loc5_[1],
                        "scale":_loc5_[3],
                        "zDistance":_loc5_[2]
                     };
                     if(!_loc10_)
                     {
                        this.§@"^§(_loc6_,true);
                        if(_loc10_)
                        {
                           continue;
                        }
                     }
                     this.§="y§ = true;
                  }
               }
               continue;
            }
            §§goto(addr72);
         }
      }
   }
}
