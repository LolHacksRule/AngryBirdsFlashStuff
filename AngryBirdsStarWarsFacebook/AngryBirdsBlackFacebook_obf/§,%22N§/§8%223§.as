package §,"N§
{
   import flash.net.SharedObject;
   
   public class §8"3§
   {
      
      public static const §@"U§:String = "challenge";
      
      public static const §`!v§:String = "gift";
      
      public static const §9#V§:String = "invite";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §@"U§ = "challenge";
            while(true)
            {
               §`!v§ = "gift";
               loop1:
               while(!(_loc1_ && _loc2_))
               {
                  while(true)
                  {
                     §9#V§ = "invite";
                     if(!_loc1_)
                     {
                        break;
                     }
                     continue loop1;
                  }
                  return;
               }
            }
         }
         §§goto(addr62);
      }
      
      private var §`!m§:SharedObject;
      
      public function §8"3§()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            super();
         }
         try
         {
            this.§`!m§ = SharedObject.getLocal(§@!m§.§-t§,§@!m§.§5"b§);
            if(!_loc3_)
            {
               if(!this.§`!m§.data.quickPopupsLastOpenTime)
               {
                  if(_loc2_)
                  {
                     this.§`!m§.data.quickPopupsLastOpenTime = {};
                     if(!(_loc3_ && _loc2_))
                     {
                        addr59:
                        this.§`!m§.flush();
                     }
                  }
                  §§goto(addr59);
               }
               §§goto(addr84);
            }
            §§goto(addr59);
         }
         catch(e:Error)
         {
         }
         addr84:
      }
      
      public function §5">§(param1:String) : Number
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:* = Number(0);
         try
         {
            §§push(Number(this.§`!m§.data.quickPopupsLastOpenTime[param1]));
            if(_loc4_)
            {
               if(!§§pop())
               {
                  if(!_loc5_)
                  {
                     addr42:
                     §§pop();
                     if(_loc4_ || param1)
                     {
                        §§push(Number(0));
                        if(_loc4_)
                        {
                           addr54:
                           §§push(Number(§§pop()));
                           if(!_loc4_)
                           {
                           }
                           §§goto(addr81);
                        }
                        _loc2_ = §§pop();
                     }
                     §§push(_loc2_);
                  }
                  addr81:
                  return §§pop();
               }
               §§goto(addr54);
            }
            §§goto(addr42);
         }
         catch(e:Error)
         {
         }
         §§goto(addr42);
      }
      
      public function §+#U§(param1:String) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         try
         {
            this.§`!m§.data.quickPopupsLastOpenTime[param1] = new Date().time;
            if(_loc3_)
            {
               this.§`!m§.flush();
            }
         }
         catch(e:Error)
         {
         }
      }
   }
}
