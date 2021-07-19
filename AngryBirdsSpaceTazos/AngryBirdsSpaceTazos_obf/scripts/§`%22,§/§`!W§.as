package §`",§
{
   public class §`!W§ implements §'8§
   {
       
      
      private var mName:String;
      
      private var §>"G§:Array;
      
      private var §<F§:Boolean;
      
      public function §`!W§(param1:String)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§>"G§ = [];
            do
            {
               super();
               do
               {
                  this.mName = param1;
               }
               while(!(_loc3_ || _loc2_));
               
            }
            while(!_loc3_);
            
         }
      }
      
      public function get name() : String
      {
         return this.mName;
      }
      
      protected function §4!c§(param1:String) : §?" §
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:§?" § = null;
         var _loc3_:int = 0;
         var _loc4_:* = this.§>"G§;
         while(true)
         {
            for each(_loc2_ in _loc4_)
            {
               if(_loc5_ && _loc3_)
               {
                  break;
               }
               if(_loc2_.name == param1)
               {
                  if(!(_loc5_ && this))
                  {
                     break;
                  }
               }
            }
            return null;
         }
         return _loc2_;
      }
      
      public function §>!B§(param1:§?" §) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            if(this.§4!c§(param1.name))
            {
               if(_loc2_)
               {
                  addr75:
                  param1.dispose();
               }
            }
            else
            {
               do
               {
                  this.§>"G§.push(param1);
                  do
                  {
                     this.§<F§ = false;
                  }
                  while(_loc3_);
                  
                  if(_loc2_)
                  {
                     return;
                  }
               }
               while(!(_loc3_ && param1));
               
            }
            return;
         }
         §§goto(addr75);
      }
      
      public function dispose() : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc1_:§?" § = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this.§>"G§)
         {
            if(!(_loc4_ && _loc2_))
            {
               _loc1_.dispose();
            }
         }
         if(_loc5_)
         {
            this.§>"G§ = [];
         }
      }
      
      public function §&!#§(param1:String) : §1!v§
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:§1!v§ = null;
         var _loc3_:* = Number(0);
         while(_loc3_ < this.§>"G§.length)
         {
            _loc2_ = (this.§>"G§[_loc3_] as §?" §).§&!#§(param1);
            if(_loc5_ && _loc2_)
            {
               continue;
            }
            if(_loc2_ != null)
            {
               if(!(_loc5_ && _loc2_))
               {
                  return _loc2_;
               }
               continue;
            }
            §§push(_loc3_);
            if(!_loc5_)
            {
               §§push(§§pop() + 1);
               if(_loc4_ || this)
               {
                  addr91:
                  §§push(Number(§§pop()));
               }
               _loc3_ = §§pop();
               continue;
            }
            §§goto(addr91);
         }
         return null;
      }
      
      public function get §4T§() : int
      {
         return this.§>"G§.length;
      }
      
      public function §5!v§(param1:int) : §?" §
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            §§push(param1);
            loop0:
            while(true)
            {
               §§push(0);
               addr115:
               while(true)
               {
                  §§push(§§pop() < §§pop());
                  addr116:
                  loop2:
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           loop6:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 loop7:
                                 while(true)
                                 {
                                    §§push(this.§<F§);
                                    if(_loc3_)
                                    {
                                       continue loop6;
                                    }
                                    if(!_loc3_)
                                    {
                                       if(!(_loc2_ || _loc3_))
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          addr19:
                                          while(true)
                                          {
                                             §§push(this.§>"G§);
                                             if(!(_loc3_ && this))
                                             {
                                                break;
                                             }
                                             continue loop8;
                                          }
                                       }
                                       if(_loc2_)
                                       {
                                          if(_loc3_ && this)
                                          {
                                             return null;
                                             addr100:
                                          }
                                          §§push(this.§>"G§);
                                          while(true)
                                          {
                                             §§pop().sortOn("name");
                                             §§goto(addr19);
                                          }
                                       }
                                       while(!_loc3_)
                                       {
                                          this.§<F§ = true;
                                          if(!_loc2_)
                                          {
                                             continue;
                                          }
                                          if(_loc3_)
                                          {
                                             continue loop7;
                                          }
                                       }
                                       continue loop0;
                                       return §§pop()[param1];
                                    }
                                 }
                                 continue loop2;
                              }
                              §§goto(addr100);
                           }
                        }
                        addr98:
                     }
                     while(true)
                     {
                        §§pop();
                        continue loop0;
                     }
                  }
               }
            }
         }
         §§goto(addr100);
      }
   }
}
