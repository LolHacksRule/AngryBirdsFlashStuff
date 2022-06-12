package §!!C§
{
   public class §1"=§
   {
       
      
      protected var §]K§:§]!;§;
      
      protected var § !g§:Object;
      
      protected var §+]§:String;
      
      protected var §"S§:String;
      
      protected var §]!e§:String;
      
      public function §1"=§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!(_loc5_ && param3))
         {
            this.§ !g§ = {};
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§]!e§ = param3;
                  while(true)
                  {
                     this.§"S§ = param2;
                     loop3:
                     while(!_loc5_)
                     {
                        continue loop1;
                        while(true)
                        {
                           this.§+]§ = param1;
                           if(!_loc5_)
                           {
                              break;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr70);
      }
      
      public function §9V§() : §]!;§
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc1_)
         {
            §§push(this.§]K§);
            if(_loc1_)
            {
               if(!§§pop())
               {
                  if(!(_loc2_ && _loc2_))
                  {
                     this.§]K§ = new §]!;§(this.§"S§,this.§]!e§,this.§+]§ + "/fb/friends",true);
                     addr68:
                     §§push(this.§]K§);
                  }
               }
               §§goto(addr68);
            }
            return §§pop();
         }
         §§goto(addr68);
      }
      
      public function injectData(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§]K§ = new §]!;§(this.§"S§,this.§]!e§,this.§+]§ + "/fb/friends",true,param1);
         }
      }
      
      public function §#!7§(param1:String, param2:String, param3:Boolean = false) : §]!;§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            if(this.§ !g§[param2])
            {
               if(!(_loc6_ && param1))
               {
                  return this.§ !g§[param2];
               }
            }
         }
         return this.§ !g§[param2] = new §]!;§(this.§"S§,this.§]!e§,this.§+]§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function § !;§(param1:Array) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         var _loc2_:String = null;
         var _loc3_:int = 0;
         for each(_loc2_ in param1)
         {
            if(_loc6_ || _loc3_)
            {
               if(this.§ !g§[_loc2_])
               {
                  if(!(_loc5_ && param1))
                  {
                     this.§ !g§[_loc2_] = null;
                  }
               }
            }
         }
      }
      
      public function §0W§(param1:String) : §]!;§
      {
         return this.§ !g§[param1];
      }
      
      public function get §%!=§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§]K§);
            if(_loc2_ || _loc1_)
            {
               if(§§pop() == null)
               {
                  if(!_loc1_)
                  {
                     addr42:
                     §§push(-1);
                     if(_loc2_)
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr46:
                     return this.§]K§.§%!=§;
                  }
                  return §§pop();
               }
            }
            §§goto(addr46);
         }
         §§goto(addr42);
      }
   }
}
