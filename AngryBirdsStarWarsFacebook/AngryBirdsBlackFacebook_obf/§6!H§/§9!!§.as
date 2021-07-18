package §6!H§
{
   import §,"N§.§6"w§;
   import §,"N§.§<!9§;
   import §,"N§.§?v§;
   
   public class §9!!§
   {
      
      public static const §;"S§:String = "PowerUp";
      
      public static const §"!O§:String = "Energy";
      
      public static const §@#"§:String = "Level_Unlock";
      
      public static const §`!P§:String = "unlimited";
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §;"S§ = "PowerUp";
            while(true)
            {
               §"!O§ = "Energy";
               while(!_loc1_)
               {
                  §@#"§ = "Level_Unlock";
                  while(!(_loc1_ && _loc2_))
                  {
                     §`!P§ = "unlimited";
                     if(_loc2_)
                     {
                        return;
                        addr40:
                     }
                  }
               }
            }
         }
         §§goto(addr40);
      }
      
      private var §1"3§:int;
      
      private var §6##§:String;
      
      private var §3!S§:Vector.<§5!t§>;
      
      public function §9!!§(param1:String, param2:int = 0)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            super();
            while(true)
            {
               this.§6##§ = param1;
               while(_loc4_)
               {
                  this.§1"3§ = param2;
                  while(!(_loc3_ && _loc3_))
                  {
                     this.§3!S§ = this.§58§();
                     if(_loc4_)
                     {
                        return;
                        addr41:
                     }
                  }
               }
            }
         }
         §§goto(addr41);
      }
      
      public function get daysLeft() : int
      {
         return this.§1"3§;
      }
      
      public function set daysLeft(param1:int) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§1"3§ = param1;
         }
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get content() : Vector.<§5!t§>
      {
         return this.§3!S§.concat();
      }
      
      protected function §58§() : Vector.<§5!t§>
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc1_:Vector.<§5!t§> = new Vector.<§5!t§>(0);
         var _loc2_:* = this.§6##§;
         if(!_loc4_)
         {
            if(§<!9§.§ v§ === _loc2_)
            {
               addr89:
               §§push(0);
               if(!_loc3_)
               {
               }
            }
            else
            {
               §§push(1);
            }
            loop3:
            switch(§§pop())
            {
               case 0:
                  _loc1_.push(new §5!t§(§;"S§,§6"w§.§+!G§,§`!P§));
                  loop0:
                  while(true)
                  {
                     while(true)
                     {
                        _loc1_.push(new §5!t§(§"!O§,§?v§.§5"=§,§`!P§));
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                        break loop3;
                     }
                  }
            }
            return _loc1_;
         }
         §§goto(addr89);
      }
      
      public function toString() : String
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push("[Subscription id:" + this.§6##§);
         if(_loc2_)
         {
            §§push(§§pop() + ", daysLeft:");
            if(!_loc1_)
            {
               §§push(§§pop() + this.§1"3§);
               if(_loc1_)
               {
               }
               §§goto(addr54);
            }
            §§push(§§pop() + "]");
         }
         addr54:
         return §§pop();
      }
   }
}
