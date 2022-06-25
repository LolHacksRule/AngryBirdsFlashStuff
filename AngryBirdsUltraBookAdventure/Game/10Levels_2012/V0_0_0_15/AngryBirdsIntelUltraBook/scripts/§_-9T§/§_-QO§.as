package §_-9T§
{
   public class §_-QO§
   {
       
      
      public var mName:String;
      
      public var §_-l9§:Number;
      
      public var §_-gc§:Number;
      
      public var §_-Un§:Number;
      
      public var §_-0D2§:Number;
      
      public var §_-XE§:Number;
      
      public var §_-9s§:Boolean;
      
      public var §_-2n§:Number;
      
      public var §_-US§:Number;
      
      public var §_-xh§:Number;
      
      public var §_-gm§:Boolean;
      
      public var §_-94§:Boolean;
      
      public var §_-cR§:Boolean;
      
      public var §_-1V§:Array;
      
      public var §_-Tp§:Boolean;
      
      public var §_-052§:String;
      
      public var §_-Az§:String;
      
      public function §_-QO§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         if(!_loc18_)
         {
            super();
            while(true)
            {
               this.mName = param1;
               while(true)
               {
                  this.§_-l9§ = param4;
                  while(true)
                  {
                     this.§_-gc§ = param5;
                     while(true)
                     {
                        this.§_-Un§ = param3;
                        loop4:
                        while(true)
                        {
                           §§push(this);
                           §§push(param2);
                           if(_loc19_)
                           {
                              §§push(§§pop() / 1000);
                           }
                           §§pop().§_-0D2§ = §§pop();
                           loop5:
                           while(true)
                           {
                              this.§_-gm§ = param6;
                              loop6:
                              while(true)
                              {
                                 this.§_-cR§ = param7;
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this);
                                    if(_loc19_)
                                    {
                                       §§push(param8);
                                       if(!_loc18_)
                                       {
                                          if(§§pop() != 0)
                                          {
                                             addr152:
                                             §§push(param8);
                                             if(_loc19_)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!(_loc18_ && param2))
                                                {
                                                   addr163:
                                                }
                                             }
                                             §§goto(addr163);
                                          }
                                          else
                                          {
                                             §§push(Number(1));
                                          }
                                          §§pop().§_-XE§ = §§pop();
                                          while(true)
                                          {
                                             this.§_-9s§ = param9;
                                             addr133:
                                             while(!_loc18_)
                                             {
                                                continue loop4;
                                             }
                                             addr121:
                                             continue loop5;
                                             while(!(_loc18_ && param1))
                                             {
                                                this.§_-US§ = param11;
                                                while(true)
                                                {
                                                   this.§_-xh§ = param12;
                                                   addr109:
                                                   while(_loc19_)
                                                   {
                                                      while(true)
                                                      {
                                                         this.§_-1V§ = param13;
                                                         continue loop6;
                                                      }
                                                      return;
                                                   }
                                                   continue loop7;
                                                }
                                             }
                                          }
                                       }
                                       §§goto(addr163);
                                    }
                                    §§goto(addr152);
                                 }
                              }
                           }
                        }
                     }
                  }
                  if(_loc18_ && param2)
                  {
                     continue;
                  }
                  this.§_-Tp§ = param14;
                  §§goto(addr69);
               }
            }
         }
         §§goto(addr111);
      }
      
      public function §_-RJ§() : String
      {
         return this.mName;
      }
      
      public function §_-WF§() : Number
      {
         return this.§_-l9§;
      }
      
      public function §_-0As§() : Number
      {
         return this.§_-gc§;
      }
      
      public function §_-4L§() : Number
      {
         return this.§_-0D2§;
      }
      
      public function §_-OB§() : Boolean
      {
         return this.§_-gm§;
      }
   }
}
