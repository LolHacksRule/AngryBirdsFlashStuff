package §3!c§
{
   public class SpriteSheetContainer implements §<'§
   {
       
      
      private var §'!;§:Array;
      
      private var §>#§:Boolean;
      
      public function SpriteSheetContainer()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§'!;§ = [];
            do
            {
               super();
            }
            while(!_loc2_);
            
         }
      }
      
      public function §?b§(param1:SpriteSheetBase) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc3_))
         {
            this.§'!;§.push(param1);
         }
         do
         {
            this.§>#§ = false;
         }
         while(!_loc3_);
         
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc1_:SpriteSheetBase = null;
         for each(_loc1_ in this.§'!;§)
         {
            if(_loc4_)
            {
               _loc1_.dispose();
            }
         }
         if(!(_loc5_ && this))
         {
            this.§'!;§ = [];
         }
      }
      
      public function §1!,§(param1:String) : §33§
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:§33§ = null;
         var _loc3_:Number = 0;
         while(true)
         {
            if(_loc3_ >= this.§'!;§.length)
            {
               return null;
            }
            _loc2_ = (this.§'!;§[_loc3_] as SpriteSheetBase).§1!,§(param1);
            if(_loc4_)
            {
               break;
            }
            if(_loc2_ != null)
            {
               if(!(_loc4_ && this))
               {
                  break;
               }
            }
            §§push(_loc3_);
            if(!_loc4_)
            {
               §§push(§§pop() + 1);
               if(_loc4_ && this)
               {
                  continue;
               }
            }
            §§push(Number(§§pop()));
         }
         return _loc2_;
      }
      
      public function get §56§() : int
      {
         return this.§'!;§.length;
      }
      
      public function §!w§(param1:int) : SpriteSheetBase
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr122:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr123:
                  while(true)
                  {
                     §§push(Boolean(§§pop()));
                     if(!(_loc3_ && _loc2_))
                     {
                        §§push(§§pop());
                        if(_loc2_)
                        {
                           §§push(Boolean(§§pop()));
                        }
                        if(§§pop())
                        {
                           loop3:
                           while(true)
                           {
                              loop4:
                              while(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§push(this.§>#§);
                                    if(!(_loc3_ && _loc2_))
                                    {
                                       if(!_loc2_)
                                       {
                                          break;
                                       }
                                       if(_loc2_)
                                       {
                                          §§push(!§§pop());
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             §§pop();
                                             continue loop0;
                                          }
                                          addr136:
                                       }
                                    }
                                    if(_loc3_ && param1)
                                    {
                                       continue loop4;
                                    }
                                    if(§§pop())
                                    {
                                       if(_loc2_ || param1)
                                       {
                                          if(_loc3_)
                                          {
                                             continue;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop0;
                                          }
                                          addr89:
                                          this.§'!;§.sortOn("name");
                                          while(true)
                                          {
                                             this.§>#§ = true;
                                             if(!(_loc2_ || param1))
                                             {
                                                continue;
                                             }
                                             if(_loc3_)
                                             {
                                                break loop4;
                                             }
                                          }
                                          return §§pop()[param1];
                                          addr92:
                                       }
                                       §§goto(addr92);
                                    }
                                    §§push(this.§'!;§);
                                    if(!_loc3_)
                                    {
                                    }
                                    §§goto(addr89);
                                 }
                                 continue loop3;
                              }
                              return null;
                           }
                           continue;
                        }
                     }
                     §§goto(addr136);
                  }
               }
            }
         }
         §§goto(addr89);
      }
   }
}
