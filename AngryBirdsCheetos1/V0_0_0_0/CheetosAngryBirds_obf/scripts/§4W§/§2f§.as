package §4W§
{
   public class §2f§
   {
       
      
      private var §&!$§:Vector.<§>c§>;
      
      public function §2f§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
            do
            {
               this.§&!$§ = new Vector.<§>c§>();
            }
            while(_loc2_);
            
         }
      }
      
      public function addFrame(param1:§>c§) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(param1 != null)
            {
               do
               {
                  this.§&!$§.push(param1);
               }
               while(_loc2_);
               
               if(_loc3_)
               {
                  return;
               }
            }
         }
         throw new Error("Trying to add a null frame");
      }
      
      public function getFrame(param1:int) : §>c§
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc2_))
         {
            §§push(param1);
            loop0:
            while(true)
            {
               if(§§pop() >= this.§&!$§.length)
               {
                  if(!(_loc3_ && this))
                  {
                     §§push(int(this.§&!$§.length - 1));
                     loop1:
                     while(true)
                     {
                        param1 = §§pop();
                        addr75:
                        addr125:
                        loop4:
                        while(true)
                        {
                           if(_loc2_ || _loc3_)
                           {
                              continue loop0;
                           }
                           continue loop1;
                           addr96:
                           loop7:
                           while(true)
                           {
                              §§push(param1);
                              if(_loc2_)
                              {
                                 addr36:
                                 §§push(§§pop() >= this.§&!$§.length);
                                 if(_loc2_ || this)
                                 {
                                    while(§§pop())
                                    {
                                       if(!(_loc3_ && this))
                                       {
                                          return null;
                                       }
                                       if(_loc2_)
                                       {
                                          if(!_loc3_)
                                          {
                                             break;
                                          }
                                          break loop4;
                                       }
                                       continue loop7;
                                       §§goto(addr36);
                                    }
                                    return this.§&!$§[param1];
                                    addr47:
                                 }
                                 continue;
                              }
                              continue loop4;
                           }
                        }
                        while(true)
                        {
                           addr73:
                           while(true)
                           {
                              §§goto(addr75);
                           }
                        }
                     }
                  }
                  §§goto(addr125);
               }
               §§goto(addr73);
            }
         }
         §§goto(addr96);
      }
      
      public function getFrameCount() : int
      {
         return this.§&!$§.length;
      }
      
      public function getSubAnimation(param1:String) : §2f§
      {
         return null;
      }
   }
}
