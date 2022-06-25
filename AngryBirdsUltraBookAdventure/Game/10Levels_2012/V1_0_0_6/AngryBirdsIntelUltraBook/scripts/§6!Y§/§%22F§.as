package §6!Y§
{
   public class §"F§
   {
       
      
      protected var §1t§:§0!x§;
      
      protected var §[!M§:Object;
      
      protected var § j§:String;
      
      protected var §^o§:String;
      
      protected var §<!t§:String;
      
      public function §"F§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(_loc4_)
         {
            this.§[!M§ = {};
            loop0:
            while(true)
            {
               super();
               loop1:
               while(true)
               {
                  this.§<!t§ = param3;
                  while(true)
                  {
                     this.§^o§ = param2;
                     loop3:
                     while(!(_loc5_ && param2))
                     {
                        continue loop1;
                        while(true)
                        {
                           this.§ j§ = param1;
                           if(_loc4_ || this)
                           {
                              if(!_loc5_)
                              {
                                 break;
                              }
                              continue loop0;
                           }
                           continue loop3;
                        }
                        return;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
      
      public function §[!0§() : §0!x§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §§push(this.§1t§);
            if(_loc2_ || _loc2_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this.§1t§ = new §0!x§(this.§^o§,this.§<!t§,this.§ j§ + "/fb/friends",true);
                     addr54:
                     §§push(this.§1t§);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public function §??§(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§1t§ = new §0!x§(this.§^o§,this.§<!t§,this.§ j§ + "/fb/friends",true,param1);
         }
      }
      
      public function §]!q§(param1:String, param2:String, param3:Boolean = false) : §0!x§
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            if(this.§[!M§[param2])
            {
               if(_loc5_)
               {
                  return this.§[!M§[param2];
               }
            }
         }
         return this.§[!M§[param2] = new §0!x§(this.§^o§,this.§<!t§,this.§ j§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §6!7§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               if(this.§[!M§[_loc2_])
               {
                  if(!(_loc6_ && param1))
                  {
                     this.§[!M§[_loc2_] = null;
                  }
               }
            }
         }
      }
      
      public function §5!$§(param1:String) : §0!x§
      {
         return this.§[!M§[param1];
      }
      
      public function get §-b§() : int
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §§push(this.§1t§);
            if(!_loc1_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc1_ && _loc2_))
                  {
                     §§push(-1);
                     if(!(_loc1_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr51:
                     return this.§1t§.§-b§;
                  }
                  return §§pop();
               }
            }
         }
         §§goto(addr51);
      }
   }
}
