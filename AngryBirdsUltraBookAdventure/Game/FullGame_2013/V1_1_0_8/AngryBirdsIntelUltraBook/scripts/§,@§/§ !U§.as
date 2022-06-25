package §,@§
{
   public class § !U§
   {
       
      
      protected var §<!F§:§'!6§;
      
      protected var §#<§:Object;
      
      protected var §0!m§:String;
      
      protected var §][§:String;
      
      protected var §0!T§:String;
      
      public function § !U§(param1:String, param2:String, param3:String)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         if(!_loc5_)
         {
            this.§#<§ = {};
            while(true)
            {
               super();
               addr68:
               if(_loc5_ && param2)
               {
                  continue;
               }
               this.§0!m§ = param1;
               addr75:
               if(_loc4_)
               {
                  addr29:
                  if(!(_loc4_ || param2))
                  {
                     while(true)
                     {
                        this.§0!T§ = param3;
                        while(true)
                        {
                           this.§][§ = param2;
                           addr61:
                           while(_loc4_ || this)
                           {
                              §§goto(addr68);
                              §§goto(addr75);
                           }
                        }
                        §§goto(addr29);
                     }
                     addr84:
                  }
                  return;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr84);
      }
      
      public function §9!i§() : §'!6§
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_ || _loc1_)
         {
            §§push(this.§<!F§);
            if(!_loc1_)
            {
               if(!§§pop())
               {
                  if(_loc2_)
                  {
                     this.§<!F§ = new §'!6§(this.§][§,this.§0!T§,this.§0!m§ + "/fb/friends",true);
                     addr54:
                     §§push(this.§<!F§);
                  }
               }
               §§goto(addr54);
            }
            return §§pop();
         }
         §§goto(addr54);
      }
      
      public function §8m§(param1:Object) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§<!F§ = new §'!6§(this.§][§,this.§0!T§,this.§0!m§ + "/fb/friends",true,param1);
         }
      }
      
      public function §2!v§(param1:String, param2:String, param3:Boolean = false) : §'!6§
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            if(this.§#<§[param2])
            {
               if(_loc6_ || param3)
               {
                  return this.§#<§[param2];
               }
            }
         }
         return this.§#<§[param2] = new §'!6§(this.§][§,this.§0!T§,this.§0!m§ + "/getlevelscores/" + param1 + "/" + param2 + "/" + param3.toString(),false);
      }
      
      public function §1!z§(param1:Array) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         var _loc2_:String = null;
         for each(_loc2_ in param1)
         {
            if(!_loc6_)
            {
               if(!this.§#<§[_loc2_])
               {
                  continue;
               }
               if(_loc6_)
               {
                  continue;
               }
            }
            this.§#<§[_loc2_] = null;
         }
      }
      
      public function §-""§(param1:String) : §'!6§
      {
         return this.§#<§[param1];
      }
      
      public function get §6!4§() : int
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            §§push(this.§<!F§);
            if(!_loc2_)
            {
               if(§§pop() == null)
               {
                  if(!(_loc2_ && this))
                  {
                     addr46:
                     §§push(-1);
                     if(!(_loc2_ && this))
                     {
                        return §§pop();
                     }
                  }
                  else
                  {
                     addr55:
                     return this.§<!F§.§6!4§;
                  }
                  return §§pop();
               }
            }
            §§goto(addr55);
         }
         §§goto(addr46);
      }
   }
}
