package §"k§
{
   public class §[!7§ implements §&"r§
   {
       
      
      protected var §8x§:§!!J§;
      
      protected var §#"&§:Object;
      
      protected var §@#L§:String;
      
      protected var §>#T§:String;
      
      protected var §9#Y§:String;
      
      public function §[!7§(param1:String, param2:String, param3:String, param4:Object)
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && param2))
         {
            this.§#"&§ = {};
         }
         while(true)
         {
            super();
            loop1:
            while(true)
            {
               this.§9#Y§ = param3;
               do
               {
                  this.§>#T§ = param2;
                  continue loop1;
               }
               while(_loc5_);
               
               return;
            }
            while(_loc6_ || param1)
            {
               this.§8x§ = new §!!J§(this.§>#T§,this.§9#Y§,this.§@#L§ + "/fb/friends",true,param4);
               if(!(_loc6_ || this))
               {
                  continue;
               }
               §§goto(addr61);
            }
         }
      }
      
      public function getTotalScores() : §6!a§
      {
         return this.§8x§;
      }
      
      public function §[n§(param1:String, param2:String, param3:Boolean) : §6!a§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param2))
         {
            if(this.§#"&§[param2])
            {
               if(!(_loc6_ && param3))
               {
                  return this.§#"&§[param2];
               }
            }
         }
         return this.§#"&§[param2] = new §!!J§(this.§>#T§,this.§9#Y§,this.§@#L§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3,false);
      }
      
      public function §1"7§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1)
         {
            if(!_loc5_)
            {
               if(this.§#"&§[_loc2_])
               {
                  if(!(_loc5_ && _loc3_))
                  {
                     this.§#"&§[_loc2_] = null;
                  }
               }
            }
         }
      }
      
      public function §,"1§(param1:String) : §!!J§
      {
         return this.§#"&§[param1];
      }
      
      public function get §,"%§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §§push(this.§8x§);
            if(_loc1_)
            {
               if(§§pop() == null)
               {
                  if(_loc1_)
                  {
                     §§goto(addr46);
                  }
               }
               §§push(this.§8x§);
            }
            return §§pop().§,"%§;
         }
         addr46:
         return -1;
      }
   }
}
