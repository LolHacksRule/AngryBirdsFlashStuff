package §_-bz§
{
   import §_-e3§.§_-54§;
   
   public class §_-BW§
   {
       
      
      private var §_-6o§:String;
      
      private var §_-Hd§:Vector.<Function>;
      
      private var §_-M6§:Boolean;
      
      public function §_-BW§(param1:String, param2:Function, param3:Boolean = true)
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         super();
         this.§_-6o§ = param1;
         if(_loc4_ || this)
         {
            this.§_-M6§ = param3;
            if(_loc4_ || param1)
            {
               if(param2 != null)
               {
                  if(!(_loc5_ && param3))
                  {
                     addr52:
                     §_-54§.log("[ServerCommand] Callback in constructor is not null. Adding to command callbacks.");
                     if(!(_loc5_ && param3))
                     {
                        addr69:
                        this.addCallback(param2);
                     }
                  }
                  §§goto(addr69);
               }
               return;
            }
            §§goto(addr52);
         }
         §§goto(addr69);
      }
      
      public function §_-nt§() : String
      {
         return this.§_-6o§;
      }
      
      public function §_-ut§(param1:Boolean) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§_-M6§ = param1;
         }
      }
      
      public function §_-jv§() : Boolean
      {
         return this.§_-M6§;
      }
      
      public function addCallback(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!(_loc2_ && _loc2_))
         {
            if(this.§_-Hd§ == null)
            {
               if(!_loc2_)
               {
                  this.§_-Hd§ = new Vector.<Function>();
                  if(!(_loc2_ && this))
                  {
                     addr47:
                     if(this.§_-Hd§.indexOf(param1) == -1)
                     {
                        if(_loc3_ || param1)
                        {
                        }
                     }
                     §§goto(addr71);
                  }
               }
               this.§_-Hd§.push(param1);
               §§goto(addr71);
            }
            §§goto(addr47);
         }
         addr71:
      }
      
      public function §_-IR§(param1:Function) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            if(this.§_-Hd§.indexOf(param1) > -1)
            {
               if(_loc3_ || param1)
               {
                  addr43:
                  this.§_-Hd§.splice(this.§_-Hd§.indexOf(param1),1);
               }
            }
            return;
         }
         §§goto(addr43);
      }
      
      public function §_-ir§() : Vector.<Function>
      {
         return this.§_-Hd§;
      }
   }
}
