package §9p§
{
   import §1!i§.§,#_§;
   import §;#Q§.§>#I§;
   
   public class §#"T§ implements §>#I§
   {
       
      
      private var §="K§:Number;
      
      private var §3"D§:§1!J§;
      
      private var §#"8§:§,#_§;
      
      private var §;"D§:String;
      
      private var § #$§:int;
      
      public function §#"T§()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
         }
      }
      
      public function init(param1:Object) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            §§push(this);
            if(_loc4_ || _loc3_)
            {
               if(param1.starCoins == undefined)
               {
                  addr32:
                  §§push(Number(NaN));
                  if(_loc3_ && param1)
                  {
                  }
               }
               else
               {
                  §§push(Number(param1.starCoins));
               }
               §§pop().§="K§ = §§pop();
               if(!_loc3_)
               {
                  if(param1.energy)
                  {
                     if(_loc4_ || _loc3_)
                     {
                        (this.§3"D§ = new §1!J§()).init(param1.energy);
                        if(!_loc3_)
                        {
                           §§goto(addr126);
                        }
                        §§goto(addr108);
                     }
                     §§goto(addr125);
                  }
                  addr126:
                  if(param1.birdLevels)
                  {
                     addr139:
                     while(true)
                     {
                        this.§#"8§ = new §,#_§(param1.birdLevels);
                        addr145:
                        while(true)
                        {
                        }
                     }
                     addr139:
                  }
                  loop0:
                  while(param1.reward)
                  {
                     loop1:
                     while(_loc4_ || _loc2_)
                     {
                        this.§;"D§ = param1.reward.i;
                        while(true)
                        {
                           this.§ #$§ = param1.reward.q;
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(_loc3_ && _loc3_)
                           {
                              continue loop1;
                           }
                           if(!(_loc3_ && this))
                           {
                              addr108:
                              break loop0;
                           }
                           §§goto(addr139);
                        }
                     }
                     §§goto(addr145);
                  }
                  return;
               }
               §§goto(addr125);
            }
            §§goto(addr32);
         }
         §§goto(addr139);
      }
      
      public function get starCoins() : Number
      {
         return this.§="K§;
      }
      
      public function get § 8§() : §1!J§
      {
         return this.§3"D§;
      }
      
      public function get birdLevels() : §,#_§
      {
         return this.§#"8§;
      }
      
      public function get §@!?§() : String
      {
         return this.§;"D§;
      }
      
      public function get §+",§() : int
      {
         return this.§ #$§;
      }
   }
}
