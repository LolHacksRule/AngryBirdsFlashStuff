package §+"§
{
   public class §#!=§
   {
       
      
      public var mName:String;
      
      public var §4!<§:Number;
      
      public var §#!a§:Number;
      
      public var §`!G§:Number;
      
      public var §4r§:Number;
      
      public var get:Number;
      
      public var §@P§:Boolean;
      
      public var §=E§:Number;
      
      public var §=!1§:Number;
      
      public var §+8§:Number;
      
      public var §@v§:Boolean;
      
      public var §[!+§:Boolean;
      
      public var §-!H§:Boolean;
      
      public var §&!C§:Array;
      
      public var §9e§:Boolean;
      
      public var §`_§:String;
      
      public var §"!'§:String;
      
      public function §#!=§(param1:String, param2:Number, param3:Number, param4:Number, param5:Number, param6:Boolean, param7:Boolean, param8:Number, param9:Boolean, param10:Number, param11:Number, param12:Number, param13:Array, param14:Boolean, param15:String, param16:String, param17:Boolean = false)
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         if(_loc18_)
         {
            super();
            loop0:
            while(true)
            {
               this.mName = param1;
               addr94:
               if(!(_loc18_ || param1))
               {
                  continue;
               }
               this.§"!'§ = param16;
               while(true)
               {
                  if(_loc18_ || param3)
                  {
                     addr67:
                     if(_loc19_ && param1)
                     {
                        break;
                     }
                     continue;
                  }
                  loop10:
                  while(true)
                  {
                     if(!(_loc19_ && param1))
                     {
                        addr152:
                        if(!(_loc19_ && param1))
                        {
                           this.§=!1§ = param11;
                           loop11:
                           while(true)
                           {
                              this.§+8§ = param12;
                              loop12:
                              while(true)
                              {
                                 this.§&!C§ = param13;
                                 addr113:
                                 loop13:
                                 while(_loc18_ || param3)
                                 {
                                    this.§9e§ = param14;
                                    loop14:
                                    while(!_loc19_)
                                    {
                                       this.§`_§ = param15;
                                       while(true)
                                       {
                                          if(_loc19_)
                                          {
                                             continue loop14;
                                          }
                                          if(!_loc18_)
                                          {
                                             continue loop12;
                                          }
                                          if(!_loc18_)
                                          {
                                             continue loop11;
                                          }
                                          addr85:
                                          if(_loc18_ || param3)
                                          {
                                             if(_loc18_)
                                             {
                                                §§goto(addr94);
                                             }
                                             else
                                             {
                                                while(_loc18_ || param1)
                                                {
                                                   this.§`!G§ = param3;
                                                   break loop10;
                                                }
                                                while(true)
                                                {
                                                   this.§#!a§ = param5;
                                                   §§goto(addr233);
                                                }
                                                addr233:
                                                addr255:
                                             }
                                          }
                                          while(true)
                                          {
                                             this.§@P§ = param9;
                                             while(true)
                                             {
                                                this.§=E§ = param10;
                                                continue loop10;
                                                addr41:
                                                if(_loc19_ && this)
                                                {
                                                   continue;
                                                }
                                                addr48:
                                                if(!(_loc19_ && this))
                                                {
                                                   return;
                                                }
                                                addr223:
                                                while(true)
                                                {
                                                   this.§@v§ = param6;
                                                   break loop13;
                                                   §§goto(addr48);
                                                }
                                             }
                                             §§goto(addr85);
                                          }
                                          addr34:
                                          if(!(_loc18_ || param3))
                                          {
                                             continue;
                                          }
                                          §§goto(addr41);
                                       }
                                       continue loop0;
                                    }
                                 }
                                 while(true)
                                 {
                                    this.§-!H§ = param7;
                                    addr204:
                                    while(true)
                                    {
                                       §§push(this);
                                       if(!_loc19_)
                                       {
                                          §§push(param8);
                                          if(_loc18_ || param1)
                                          {
                                             if(§§pop() != 0)
                                             {
                                                addr179:
                                                §§push(param8);
                                                if(!(_loc19_ && param3))
                                                {
                                                   §§push(Number(§§pop()));
                                                   if(_loc19_ && param2)
                                                   {
                                                   }
                                                }
                                             }
                                             else
                                             {
                                                §§push(Number(1));
                                             }
                                          }
                                          §§pop().get = §§pop();
                                          §§goto(addr199);
                                       }
                                       §§goto(addr179);
                                       continue loop10;
                                    }
                                    §§goto(addr113);
                                 }
                              }
                           }
                        }
                        break;
                     }
                     §§goto(addr204);
                  }
                  while(true)
                  {
                     §§push(this);
                     §§push(param2);
                     if(!(_loc19_ && param3))
                     {
                        §§push(§§pop() / 1000);
                     }
                     §§pop().§4r§ = §§pop();
                     §§goto(addr223);
                     §§goto(addr152);
                  }
               }
               while(true)
               {
                  this.§4!<§ = param4;
                  §§goto(addr255);
                  §§goto(addr67);
               }
               addr260:
            }
         }
         §§goto(addr260);
      }
      
      public function §,1§() : String
      {
         return this.mName;
      }
      
      public function §,P§() : Number
      {
         return this.§4!<§;
      }
      
      public function §]!@§() : Number
      {
         return this.§#!a§;
      }
      
      public function §7;§() : Number
      {
         return this.§4r§;
      }
      
      public function §%#§() : Boolean
      {
         return this.§@v§;
      }
   }
}
