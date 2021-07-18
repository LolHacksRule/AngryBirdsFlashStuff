package §'"E§
{
   public class §^"`§ implements §8d§
   {
       
      
      protected var §6##§:String;
      
      protected var §;"-§:String;
      
      protected var §0!3§:Boolean;
      
      protected var §,#4§:Boolean;
      
      protected var §1#Q§:Boolean;
      
      protected var §,!9§:Boolean;
      
      public function §^"`§(param1:String, param2:String)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§6##§ = param1;
               loop1:
               while(true)
               {
                  this.§;"-§ = param2;
                  loop2:
                  while(true)
                  {
                     this.§1#Q§ = false;
                     loop3:
                     while(true)
                     {
                        this.§0!3§ = false;
                        while(true)
                        {
                           this.§,!9§ = true;
                           loop5:
                           while(!_loc3_)
                           {
                              continue loop1;
                              while(true)
                              {
                                 this.§,#4§ = true;
                                 if(_loc4_ || param1)
                                 {
                                    if(!_loc3_)
                                    {
                                       continue loop2;
                                    }
                                    continue loop3;
                                 }
                                 continue loop5;
                              }
                              return;
                           }
                        }
                     }
                  }
               }
               if(!(_loc4_ || param1))
               {
                  continue;
               }
               §§goto(addr61);
            }
         }
         §§goto(addr75);
      }
      
      public function get id() : String
      {
         return this.§6##§;
      }
      
      public function get §6#A§() : String
      {
         return this.§;"-§;
      }
      
      public function get §7"U§() : Boolean
      {
         return this.§1#Q§;
      }
      
      public function get isComplete() : Boolean
      {
         return this.§0!3§;
      }
      
      public function get allowNextPowerUp() : Boolean
      {
         return this.§,#4§;
      }
      
      public function get §0i§() : Boolean
      {
         return this.§,!9§;
      }
      
      public function execute() : void
      {
      }
      
      public function §%"L§(param1:Number) : void
      {
      }
      
      public function updateTimeStep(param1:Number) : void
      {
      }
   }
}
