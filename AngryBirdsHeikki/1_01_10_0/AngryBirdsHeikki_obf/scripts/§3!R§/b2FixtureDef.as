package §3!R§
{
   import §7q§.b2Shape;
   
   public class b2FixtureDef
   {
       
      
      public var shape:b2Shape;
      
      public var §<!B§;
      
      public var friction:Number;
      
      public var restitution:Number;
      
      public var density:Number;
      
      public var §0h§:Boolean;
      
      public var filter:b2FilterData;
      
      public function b2FixtureDef()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            this.filter = new b2FilterData();
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.shape = null;
                  addr159:
                  while(true)
                  {
                     this.§<!B§ = null;
                     continue loop1;
                  }
               }
               addr115:
               if(!(_loc2_ || this))
               {
                  continue;
               }
               §§push(this.filter);
               while(true)
               {
                  §§push(1);
                  addr98:
                  while(true)
                  {
                     §§pop().§]!&§ = §§pop();
                     addr99:
                     addr111:
                     loop9:
                     while(_loc2_ || _loc2_)
                     {
                        §§push(this.filter);
                        loop10:
                        while(true)
                        {
                           §§push(65535);
                           addr90:
                           while(true)
                           {
                              §§pop().§+Q§ = §§pop();
                              addr91:
                              while(!_loc1_)
                              {
                                 continue loop10;
                              }
                              continue loop9;
                           }
                        }
                     }
                     while(true)
                     {
                        if(!_loc1_)
                        {
                           if(_loc2_)
                           {
                              §§goto(addr115);
                           }
                           else
                           {
                              §§goto(addr159);
                           }
                        }
                        break;
                        §§goto(addr99);
                     }
                     §§goto(addr137);
                  }
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  §§push(0);
                  if(!_loc1_)
                  {
                     if(!_loc1_)
                     {
                        §§pop().§7!-§ = §§pop();
                        while(!(_loc1_ && this))
                        {
                           this.§0h§ = false;
                           if(!(_loc2_ || this))
                           {
                              continue;
                           }
                           if(_loc2_)
                           {
                              addr37:
                              if(!(_loc1_ && this))
                              {
                                 return;
                              }
                              while(true)
                              {
                                 this.restitution = 0;
                                 §§goto(addr37);
                              }
                              addr132:
                           }
                           while(true)
                           {
                              this.density = 0;
                              §§goto(addr111);
                           }
                        }
                        §§goto(addr91);
                     }
                     §§goto(addr98);
                  }
                  §§goto(addr90);
               }
            }
         }
         §§goto(addr132);
      }
   }
}
