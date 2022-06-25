package §=!M§
{
   import flash.events.Event;
   
   public class §>!M§ extends Event
   {
      
      public static const §4!Q§:String = "fileLoaded";
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            §4!Q§ = "fileLoaded";
         }
      }
      
      public var file:§"T§;
      
      public function §>!M§(param1:String, param2:§"T§ = null, param3:Boolean = false, param4:Boolean = false)
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.file = param2;
            do
            {
               super(param1,param3,param4);
            }
            while(_loc6_ && param1);
            
         }
      }
      
      override public function clone() : Event
      {
         return new §>!M§(type,this.file,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push("[FZipEvent type=\"");
         if(!(_loc2_ && this))
         {
            §§push(§§pop() + type);
            if(!_loc2_)
            {
               §§push("\" filename=\"");
               if(_loc1_ || this)
               {
                  §§push(§§pop() + §§pop());
                  if(!(_loc2_ && _loc1_))
                  {
                     §§push(§§pop() + this.file.§,,§);
                     if(_loc1_ || this)
                     {
                        addr65:
                        §§push("\" bubbles=");
                        if(_loc1_ || _loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc2_)
                           {
                              §§push(§§pop() + bubbles);
                              if(_loc1_)
                              {
                                 §§push(" cancelable=");
                                 if(!(_loc2_ && _loc2_))
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc2_ && _loc2_))
                                    {
                                       §§push(§§pop() + cancelable);
                                       if(!_loc1_)
                                       {
                                       }
                                       addr132:
                                       return §§pop() + "]";
                                       addr130:
                                    }
                                 }
                                 addr118:
                                 §§push(§§pop() + §§pop());
                                 if(_loc1_ || _loc2_)
                                 {
                                    addr126:
                                    §§push(§§pop() + eventPhase);
                                    if(_loc1_)
                                    {
                                       §§goto(addr130);
                                    }
                                 }
                                 §§goto(addr132);
                              }
                              §§push(" eventPhase=");
                              if(!(_loc2_ && _loc1_))
                              {
                                 §§goto(addr118);
                              }
                           }
                        }
                        §§goto(addr132);
                     }
                     §§goto(addr126);
                  }
                  §§goto(addr132);
               }
               §§goto(addr118);
            }
            §§goto(addr65);
         }
         §§goto(addr132);
      }
   }
}
