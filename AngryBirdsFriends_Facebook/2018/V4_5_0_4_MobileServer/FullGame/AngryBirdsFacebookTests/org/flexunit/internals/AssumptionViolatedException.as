package org.flexunit.internals
{
   import org.hamcrest.Description;
   import org.hamcrest.Matcher;
   import org.hamcrest.SelfDescribing;
   import org.hamcrest.StringDescription;
   
   public class AssumptionViolatedException extends Error implements SelfDescribing
   {
       
      
      private var value:Object;
      
      private var matcher:Matcher;
      
      public function AssumptionViolatedException(value:Object, matcher:Matcher = null)
      {
         super();
         this.value = value;
         this.matcher = matcher;
         this.message = this.getMessage();
      }
      
      public function getMessage() : String
      {
         return StringDescription.toString(this);
      }
      
      public function describeTo(description:Description) : void
      {
         if(this.matcher != null)
         {
            description.appendText("got: ");
            description.appendValue(this.value);
            description.appendText(", expected: ");
            description.appendDescriptionOf(this.matcher);
         }
         else
         {
            description.appendText("failed assumption: " + this.value);
         }
      }
   }
}
