package §&"5§
{
   public class §+2§
   {
       
      
      private var §8@§:Vector.<§6!L§>;
      
      public function §+2§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            do
            {
               this.§8@§ = new Vector.<§6!L§>();
            }
            while(_loc2_ && this);
            
         }
      }
      
      public function addFrame(param1:§6!L§) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || this)
         {
            if(param1 == null)
            {
               if(!(_loc3_ && _loc2_))
               {
                  throw new Error("Trying to add a null frame");
               }
               while(true)
               {
               }
               addr70:
            }
            while(true)
            {
               this.§8@§.push(param1);
               if(_loc2_)
               {
                  break;
               }
               §§goto(addr70);
            }
         }
      }
      
      public function getFrame(param1:int) : §6!L§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§8@§.length)
               {
                  while(true)
                  {
                     §§push(int(this.§8@§.length - 1));
                     addr109:
                     while(true)
                     {
                        param1 = §§pop();
                        addr110:
                        while(true)
                        {
                        }
                     }
                     addr81:
                     if(_loc3_ && _loc3_)
                     {
                        continue;
                     }
                     §§push(param1);
                     if(!_loc2_)
                     {
                        continue loop0;
                     }
                     if(!_loc3_)
                     {
                        §§push(§§pop() >= this.§8@§.length);
                        if(_loc2_)
                        {
                           while(§§pop())
                           {
                              if(!_loc2_)
                              {
                                 break;
                              }
                              if(_loc2_)
                              {
                                 return null;
                              }
                              loop6:
                              while(true)
                              {
                                 if(!(_loc3_ && param1))
                                 {
                                    §§goto(addr81);
                                 }
                                 break;
                                 addr73:
                                 while(true)
                                 {
                                    §§pop();
                                    continue loop6;
                                 }
                              }
                              §§goto(addr110);
                           }
                           return this.§8@§[param1];
                           addr39:
                        }
                        §§goto(addr73);
                     }
                     §§goto(addr109);
                  }
               }
               while(true)
               {
                  §§push(param1);
                  continue loop0;
                  §§goto(addr110);
               }
            }
         }
         §§goto(addr110);
      }
      
      public function getFrameCount() : int
      {
         return this.§8@§.length;
      }
      
      public function getSubAnimation(param1:String) : §+2§
      {
         return null;
      }
   }
}
