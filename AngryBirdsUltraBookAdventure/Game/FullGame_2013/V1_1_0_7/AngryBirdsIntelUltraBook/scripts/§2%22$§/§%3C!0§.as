package §2"$§
{
   import flash.events.Event;
   
   public class §<!0§ extends Event
   {
      
      public static const §5!-§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §5!-§ = "fileLoaded";
         }
      }
      
      public var file:§=!,§;
      
      public function §<!0§(param1:String, param2:§=!,§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.file = param2;
         }
         do
         {
            super(param1,param3,param4);
         }
         while(_loc6_ && param1);
         
      }
      
      override public function clone() : Event
      {
         return new §<!0§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"");
         if(_loc1_)
         {
            §§push(§§pop() + type);
            if(_loc1_ || _loc2_)
            {
               §§push("\" filename=\"");
               if(_loc1_ || _loc2_)
               {
                  §§push(§§pop() + §§pop());
                  if(!_loc2_)
                  {
                     §§push(§§pop() + this.file.§=!;§);
                     if(_loc1_)
                     {
                        addr55:
                        §§push("\" bubbles=");
                        if(!(_loc2_ && _loc1_))
                        {
                           addr63:
                           §§push(§§pop() + §§pop());
                           if(!(_loc2_ && _loc1_))
                           {
                              §§push(§§pop() + bubbles);
                              if(_loc1_ || _loc1_)
                              {
                                 addr90:
                                 §§push(" cancelable=");
                                 if(!_loc2_)
                                 {
                                    addr93:
                                    §§push(§§pop() + §§pop());
                                    if(_loc1_)
                                    {
                                       addr96:
                                       §§push(§§pop() + cancelable);
                                       if(_loc1_)
                                       {
                                          addr100:
                                          §§push(" eventPhase=");
                                          if(_loc1_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             if(!_loc2_)
                                             {
                                                §§goto(addr117);
                                             }
                                             §§goto(addr115);
                                          }
                                       }
                                       §§goto(addr117);
                                    }
                                    §§goto(addr100);
                                 }
                                 addr117:
                                 §§push(§§pop() + eventPhase);
                                 if(_loc1_ || this)
                                 {
                                    addr115:
                                    §§push("]");
                                 }
                                 return §§pop();
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr96);
                        }
                        §§goto(addr93);
                     }
                     §§goto(addr90);
                  }
                  §§goto(addr117);
               }
               §§goto(addr63);
            }
            §§goto(addr55);
         }
         §§goto(addr100);
      }
   }
}
